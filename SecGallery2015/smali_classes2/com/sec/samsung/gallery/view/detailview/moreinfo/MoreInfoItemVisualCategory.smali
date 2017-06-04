.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;
.source "MoreInfoItemVisualCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;
    }
.end annotation


# static fields
.field private static final SPACING_VALUE:I = 0x1a


# instance fields
.field private final mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

.field private final mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;Z)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mView:Landroid/view/View;

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

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-direct {v4, p1, p4, p6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    invoke-direct {v0, p0, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$MoreInfoItemCategoryDataLoader;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->setDataLoader(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/SpacingItemDecoration;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/SpacingItemDecoration;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->registerDataSetChangeListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/DataSetChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;)Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    return-object v0
.end method


# virtual methods
.method public actionEditCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->editCancel()V

    :cond_0
    return-void
.end method

.method public actionEditDone()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->editDone()V

    :cond_0
    return-void
.end method

.method public dataEdited()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->isDataSetChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCategoryAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->getView()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    :cond_0
    return-void
.end method

.method public setMode(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->setMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->setMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setVisionCloudUtils(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategory;->mRecyclerAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->setVisionCloudUtils(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)V

    :cond_0
    return-void
.end method
