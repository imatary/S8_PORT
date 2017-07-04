.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;
.source "MoreInfoItemTextCategory.java"


# instance fields
.field private final mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

.field private mExpandableLayoutContainer:Landroid/widget/FrameLayout;

.field private final mListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;

.field private final mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;)V
    .locals 2

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;

    invoke-direct {v0, p1, p4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategoryAdapter;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->registerDataSetChangeListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;)Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mMoreInfoListener:Lcom/sec/android/gallery3d/interfaces/LibraryController$HandleMoreInfoActionListener;

    return-object v0
.end method

.method private setVisibilityByViewMode()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mView:Landroid/view/View;

    const v2, 0x7f1201d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mEditMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mExpandableLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mExpandableLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mExpandableLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public actionEditCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->editCancel()V

    return-void
.end method

.method public actionEditDone()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->editDone()V

    return-void
.end method

.method public dataEdited()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->isDataSetChanged()Z

    move-result v0

    return v0
.end method

.method getCategoryAdapter()Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 11

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->getView()Landroid/view/View;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mView:Landroid/view/View;

    const v10, 0x7f1201d1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mView:Landroid/view/View;

    const v10, 0x7f1201e7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mExpandableLayoutContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v10, "layout_inflater"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1

    const v10, 0x7f0400b2

    move-object v8, v9

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v4, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0b06dc

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->setItemHeight(I)V

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mExpandableLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getCount()I

    move-result v5

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_4

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v8, v3, v9, v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const v10, 0x7f0400b1

    move-object v8, v9

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v4, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;

    goto :goto_0

    :cond_2
    move-object v2, v7

    check-cast v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v8, v3, v0, v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_3

    :cond_4
    if-le v1, v5, :cond_5

    sub-int v8, v1, v5

    invoke-virtual {v2, v5, v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->removeViews(II)V

    :cond_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mView:Landroid/view/View;

    const v9, 0x7f1201d2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->getTags()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->setVisibilityByViewMode()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mView:Landroid/view/View;

    return-object v8
.end method

.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->getView()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoBaseAdapter;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    return-void
.end method

.method public setMode(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/BaseMoreInfoItemCategory;->setMode(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->getView()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemTextCategory;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
