.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;
.source "MoreInfoItemVisualPeople.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;
    }
.end annotation


# static fields
.field private static final SPACING_VALUE:I = 0x1a


# instance fields
.field private final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private final mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->mView:Landroid/view/View;

    const v5, 0x7f120163

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v6, v6}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;

    invoke-direct {v4, p1, p6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    invoke-direct {v0, p0, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$MorePeopleCategoryDataLoader;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->setDataLoader(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/SpacingItemDecoration;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/SpacingItemDecoration;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->registerDataSetChangeListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/DataSetChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;)Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    return-object v0
.end method


# virtual methods
.method getAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeople;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;

    return-object v0
.end method
