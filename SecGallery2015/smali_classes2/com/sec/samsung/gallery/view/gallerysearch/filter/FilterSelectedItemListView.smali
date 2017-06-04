.class public Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;
.super Landroid/widget/LinearLayout;
.source "FilterSelectedItemListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mHorizontalSpacing:I

.field private mNeedPaddingChange:Z

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mNeedPaddingChange:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mVerticalSpacing:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mNeedPaddingChange:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mVerticalSpacing:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mNeedPaddingChange:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mVerticalSpacing:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Landroid/view/View$OnKeyListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-object v0
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mNeedPaddingChange:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mVerticalSpacing:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getSearchTagController()Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public initData()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setData()V

    return-void
.end method

.method public isFocusedLastLine()Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v3, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->removeSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestory()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->removeSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildCount()I

    move-result v6

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingEnd()I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    add-int/2addr v2, v12

    sub-int v11, v0, v2

    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingBottom()I

    move-result v12

    add-int/2addr v2, v12

    sub-int v10, v0, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingStart()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingTop()I

    move-result v3

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_0

    move v7, v11

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_6

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    iget v0, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    div-int/lit8 v0, v11, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingStart()I

    move-result v2

    add-int v7, v0, v2

    div-int/lit8 v0, v10, 0x2

    div-int/lit8 v2, v5, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingTop()I

    move-result v2

    add-int v3, v0, v2

    :cond_2
    :goto_2
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_5

    sub-int v2, v7, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I

    add-int/2addr v0, v4

    sub-int/2addr v7, v0

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_4

    sub-int v0, v7, v4

    if-gez v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mVerticalSpacing:I

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    move v7, v11

    goto :goto_2

    :cond_4
    add-int v0, v7, v4

    if-le v0, v11, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mVerticalSpacing:I

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingStart()I

    move-result v7

    goto :goto_2

    :cond_5
    move-object v0, p0

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I

    add-int/2addr v0, v4

    add-int/2addr v7, v0

    goto :goto_1

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingStart()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingEnd()I

    move-result v14

    div-int/lit8 v14, v14, 0x4

    add-int/2addr v13, v14

    sub-int v3, v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildCount()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingStart()I

    move-result v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iget v13, v10, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    iget v13, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getMinimumHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    sub-int v2, v13, v14

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v4, v13, v14}, Landroid/view/View;->measure(II)V

    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v13, v12, v6

    if-le v13, v3, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mVerticalSpacing:I

    add-int/2addr v13, v5

    add-int/2addr v8, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingStart()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I

    add-int/2addr v14, v6

    add-int v12, v13, v14

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v4, v13, v14}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    add-int/2addr v8, v5

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I

    add-int/2addr v13, v6

    add-int/2addr v12, v13

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v8, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getMinimumHeight()I

    move-result v13

    if-ge v8, v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getMinimumHeight()I

    move-result v8

    :cond_5
    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mNeedPaddingChange:Z

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mNeedPaddingChange:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingTop()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingRight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getPaddingBottom()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->requestLayout()V

    :cond_6
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public resetData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->resetData()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getSelectedItem()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const v5, 0x7f120100

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f120043

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    if-eqz p1, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
