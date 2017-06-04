.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FilterGroupViewPagerAdapter.java"


# static fields
.field public static final FILTER_PAGE_INDEX_EVENT:I = 0x2

.field public static final FILTER_PAGE_INDEX_INVALID:I = -0x1

.field public static final FILTER_PAGE_INDEX_LOCATION:I = 0x3

.field public static FILTER_PAGE_INDEX_MAX:I = 0x0

.field public static final FILTER_PAGE_INDEX_PERSON:I = 0x4

.field public static final FILTER_PAGE_INDEX_TIME:I = 0x0

.field public static final FILTER_PAGE_INDEX_USERTAG:I = 0x1

.field public static final LIMIT_FILTER_PAGE_INDEX_EVENT:I = 0x1

.field public static final LIMIT_FILTER_PAGE_INDEX_LOCATION:I = 0x2

.field public static final LIMIT_FILTER_PAGE_INDEX_PERSON:I = 0x3

.field public static final LIMIT_FILTER_PAGE_INDEX_TIME:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGroupDetailViewCount:I

.field private mGroupDetailViewMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->FILTER_PAGE_INDEX_MAX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewCount:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->init()V

    return-void
.end method

.method private getChildView(Landroid/support/v4/view/ViewPager;Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f040069

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1, v2, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0123

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v3, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v3, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    move-object v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->FILTER_PAGE_INDEX_MAX:I

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->initPageView()V

    return-void
.end method

.method private initPageView()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->FILTER_PAGE_INDEX_MAX:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewCount:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewCount:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getDetailView(I)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->getChildView(Landroid/support/v4/view/ViewPager;Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->removeAllViews()V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->onDestory()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewCount:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->mGroupDetailViewMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
