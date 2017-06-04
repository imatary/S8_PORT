.class public Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
.super Ljava/lang/Object;
.source "SearchFilterView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final FILTERVIEW_SHOW_HIDE_DURATION:J = 0x12cL

.field private static final FILTER_ANIMATION_OFFSET:I = 0x1f4

.field private static final HISTORY_LIST_OPEN_DELAY:F = 0.07f

.field private static final TAG:Ljava/lang/String; = "SearchFilterView"


# instance fields
.field private isAppStart:Z

.field private final mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mContainer:Landroid/view/ViewGroup;

.field private mFilterDetailView:Landroid/view/ViewGroup;

.field private mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

.field private mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

.field private mFilterEdgeView:Landroid/view/View;

.field private mFilterGroupView:Landroid/view/ViewGroup;

.field private mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

.field private mFilterSelectedItemView:Landroid/view/ViewGroup;

.field private mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

.field private mHistoryView:Landroid/widget/LinearLayout;

.field private final mHistoryViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mIsIconTouch:Z

.field private mIsPanelEnable:Z

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

.field private final mMoveDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

.field private mMoveListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

.field private mNoItemView:Landroid/view/View;

.field private mSearchTagFilterView:Landroid/view/View;

.field private mSelectedHistoryView:Landroid/view/View;

.field private mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

.field private mSelectedListView:Landroid/view/View;

.field private mSelectedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/ActionBarManager;Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterSelectedItemView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterDetailView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mNoItemView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isAppStart:Z

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedListView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedHistoryView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mIsIconTouch:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mIsPanelEnable:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$9;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$10;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200d5

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/view/ActionBarManager;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedListView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mNoItemView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setHistoryViewTouchListener()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedHistoryView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedHistoryView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mIsPanelEnable:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mIsIconTouch:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mIsIconTouch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->matchFilterPageIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    return-object v0
.end method

.method private initFilterDetailView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    const v1, 0x7f1200f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterDetailView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    const v1, 0x7f1200fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    sget v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->FILTER_PAGE_INDEX_MAX:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->init()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$8;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initFilterEdgeView()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400ed

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    const v3, 0x7f120237

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    const v3, 0x7f120238

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeBottom:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initFilterGroupView()V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    const v6, 0x7f1200f3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3, v5}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    const/4 v5, 0x2

    invoke-interface {v4, v0, v5}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->setHoverPopupType(Landroid/view/View;I)V

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$2;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$3;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$4;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$5;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initHistoryListView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    const v1, 0x7f1200fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->setListLayout(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->registerHistoryItemObserver(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$HistoryItemObserver;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setHistoryViewTouchListener()V

    return-void
.end method

.method private initSelectedItemView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    const v1, 0x7f1200fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterSelectedItemView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterSelectedItemView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    const v1, 0x7f1200fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->initData()V

    return-void
.end method

.method private isExistingOpenedPanel()Z
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isExistingSelectedFilter()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchFilterPageIndex(I)I
    .locals 6

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v4

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "SEFI"

    const-string/jumbo v3, "Time"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "SEFI"

    const-string/jumbo v3, "Sevents"

    invoke-static {v0, v1, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "SEFI"

    const-string/jumbo v2, "Location"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "SEFI"

    const-string/jumbo v2, "People"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "SEFI"

    const-string/jumbo v3, "Category"

    invoke-static {v0, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    sparse-switch p1, :sswitch_data_1

    move v0, v4

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "SEFI"

    const-string/jumbo v3, "Time"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "SEFI"

    const-string/jumbo v3, "Sevents"

    invoke-static {v0, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "SEFI"

    const-string/jumbo v3, "Location"

    invoke-static {v0, v1, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "SEFI"

    const-string/jumbo v2, "People"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1200f4 -> :sswitch_0
        0x7f1200f6 -> :sswitch_4
        0x7f1200f7 -> :sswitch_1
        0x7f1200f8 -> :sswitch_2
        0x7f1200ff -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f1200f4 -> :sswitch_5
        0x7f1200f7 -> :sswitch_6
        0x7f1200f8 -> :sswitch_7
        0x7f1200ff -> :sswitch_8
    .end sparse-switch
.end method

.method private setEnabled(Landroid/view/ViewGroup;Z)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setEnabled(Landroid/view/ViewGroup;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setHistoryViewTouchListener()V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$7;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$7;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public drawEdge(FF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$12;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;FF)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishEdge()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$14;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHistoryViewHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isHistoryViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->getHistoryViewHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    return-object v0
.end method

.method public getTagFilterHeight()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v3

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isExistingOpenedPanel()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterDetailView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterDetailView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v3

    if-eqz v2, :cond_1

    int-to-float v3, v1

    const v4, 0x7f0b011e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isExistingSelectedFilter()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterSelectedItemView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v0, v3

    if-eqz v2, :cond_2

    int-to-float v3, v1

    const v4, 0x7f0b0139

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v1, v3

    :cond_2
    add-int v3, v0, v1

    return v3
.end method

.method public getVisibility()I
    .locals 2

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    :cond_0
    return v0
.end method

.method public init()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    if-nez v1, :cond_1

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04006a

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->initFilterGroupView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->initFilterDetailView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->initSelectedItemView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->initHistoryListView()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->initFilterEdgeView()V

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04006b

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SearchFilterView"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initGlRootView(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-void
.end method

.method public isExistHistory()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusedLastItem()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->isFocusedLastLine()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getTagCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->isFocusedLastLine()Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isHideFilterPagerView()Z
    .locals 5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isHistoryViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveSearchFilter(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 8

    const v7, 0x7f0b0028

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v4, v6, v2, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b03ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v4, v6, v2, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeTop:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v4, v1, v2, v1, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->onDestory()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->onDestroy()V

    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->onTouch(Landroid/view/MotionEvent;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public refreshTagList()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mIsPanelEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->refreshTagList()V

    :cond_0
    return-void
.end method

.method public releaseEdge()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$13;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetSelectedItemViewData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->resetData()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->refreshTagList()V

    return-void
.end method

.method public setEdgeViewMargin(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterEdgeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterGroupView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setEnabled(Landroid/view/ViewGroup;Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mFilterPagerView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager;->setEnabled(Z)V

    :cond_3
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mIsPanelEnable:Z

    return-void
.end method

.method public setHistoryMargin(I)V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b016f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b016e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b016d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2, v3, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setHistoryViewAnimation()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f050024

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isAppStart:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :cond_0
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    const v2, 0x3d8f5c29    # 0.07f

    invoke-direct {v1, v0, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isAppStart:Z

    :cond_1
    return-void
.end method

.method public setHistoryVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSearchMoveListener(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mMoveListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startHideAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getTagFilterHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    sub-float v1, v3, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getTagFilterHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;

    invoke-direct {v3, p0, v2, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$15;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;FF)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public startShowAnimation(Landroid/animation/Animator$AnimatorListener;Z)V
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getTagFilterHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v1, v5

    :goto_0
    move v4, v1

    neg-float v2, v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$16;

    invoke-direct {v5, p0, v4, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$16;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;FF)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getTagFilterHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getTagFilterHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v1, v5

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "SearchFilterView"

    const-string/jumbo v6, "AndroidRuntimeException for: animator.start()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateHistoryList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->updateHistoryList()V

    return-void
.end method

.method public updateSelectedItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSelectedItemView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setData()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->refreshTagList()V

    return-void
.end method
