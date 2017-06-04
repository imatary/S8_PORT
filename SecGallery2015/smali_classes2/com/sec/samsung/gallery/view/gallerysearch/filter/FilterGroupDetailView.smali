.class public Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;
.super Landroid/widget/FrameLayout;
.source "FilterGroupDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bDisplaying:Z

.field private mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

.field private mContext:Landroid/content/Context;

.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field private mFilterClickListener:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;

.field private mHorizontalSpacing:I

.field private mImageview:Landroid/view/View;

.field private mNeedPaddingChange:Z

.field private mScrollViewHeight:I

.field private mTextview:Landroid/view/View;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mFilterClickListener:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mHorizontalSpacing:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mVerticalSpacing:I

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->bDisplaying:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mNeedPaddingChange:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mScrollViewHeight:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mImageview:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mTextview:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mDataSetObserver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mImageview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mTextview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->createDialog()V

    return-void
.end method

.method private changeDetailTextViewDescription(Landroid/view/View;Z)V
    .locals 7

    const v6, 0x7f0a0406

    const v5, 0x7f0a01b5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private createDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0337

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0400ea

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mImageview:Landroid/view/View;

    const v1, 0x7f040068

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mTextview:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mHorizontalSpacing:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setLayoutDimensions()V

    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private setLayoutDimensions()V
    .locals 7

    const v6, 0x7f0b0025

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mNeedPaddingChange:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mScrollViewHeight:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mVerticalSpacing:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setMinimumHeight(I)V

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public findViewByTagData(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTextTagData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTextTagData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isDisplaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->bDisplaying:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusedLastLine()Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mFilterClickListener:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    invoke-interface {v1, p1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;->setFilterClick(Landroid/view/View;Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setLayoutDimensions()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestory()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildCount()I

    move-result v8

    sub-int v1, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingEnd()I

    move-result v3

    sub-int v13, v1, v3

    sub-int v1, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingBottom()I

    move-result v16

    add-int v3, v3, v16

    sub-int v12, v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingStart()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingTop()I

    move-result v4

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_0

    move v9, v13

    :cond_0
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v14, 0x0

    add-int/lit8 v1, v10, -0x1

    if-ltz v1, :cond_1

    add-int/lit8 v1, v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/4 v1, 0x1

    if-ne v8, v1, :cond_4

    iget v1, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    iget v1, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    div-int/lit8 v1, v13, 0x2

    div-int/lit8 v3, v5, 0x2

    sub-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingStart()I

    move-result v3

    add-int v9, v1, v3

    div-int/lit8 v1, v12, 0x2

    div-int/lit8 v3, v6, 0x2

    sub-int/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingTop()I

    move-result v3

    add-int v4, v1, v3

    :cond_3
    :goto_2
    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_b

    sub-int v3, v9, v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setChildFrame(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mHorizontalSpacing:I

    add-int/2addr v1, v5

    sub-int/2addr v9, v1

    goto :goto_1

    :cond_4
    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_5

    sub-int v1, v9, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingStart()I

    move-result v3

    if-ge v1, v3, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mVerticalSpacing:I

    add-int/2addr v1, v6

    add-int/2addr v4, v1

    move v9, v13

    goto :goto_2

    :cond_5
    instance-of v1, v2, Landroid/widget/LinearLayout;

    if-nez v1, :cond_6

    instance-of v1, v14, Landroid/widget/LinearLayout;

    if-nez v1, :cond_6

    add-int/lit8 v1, v8, -0x1

    if-ne v10, v1, :cond_9

    if-eqz v7, :cond_9

    :cond_6
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mVerticalSpacing:I

    instance-of v1, v2, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    const/4 v15, 0x0

    :cond_7
    :goto_3
    add-int v1, v6, v15

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingStart()I

    move-result v9

    goto :goto_2

    :cond_8
    instance-of v1, v14, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    const/4 v15, 0x0

    goto :goto_3

    :cond_9
    add-int v1, v9, v5

    if-le v1, v13, :cond_3

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mVerticalSpacing:I

    add-int/2addr v1, v6

    add-int/2addr v4, v1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingStart()I

    move-result v9

    goto :goto_2

    :cond_b
    move-object/from16 v1, p0

    move v3, v9

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setChildFrame(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mHorizontalSpacing:I

    add-int/2addr v1, v5

    add-int/2addr v9, v1

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingEnd()I

    move-result v18

    sub-int v6, v16, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildCount()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingStart()I

    move-result v17

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v15, 0x0

    add-int/lit8 v18, v13, -0x1

    if-ltz v18, :cond_0

    add-int/lit8 v18, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getMinimumHeight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingBottom()I

    move-result v20

    add-int v19, v19, v20

    sub-int v5, v18, v19

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->measure(II)V

    :goto_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    instance-of v0, v8, Landroid/widget/LinearLayout;

    move/from16 v18, v0

    if-nez v18, :cond_2

    instance-of v0, v15, Landroid/widget/LinearLayout;

    move/from16 v18, v0

    if-nez v18, :cond_2

    add-int/lit8 v18, v11, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    if-eqz v7, :cond_4

    :cond_2
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mVerticalSpacing:I

    move/from16 v18, v0

    add-int v18, v18, v9

    add-int v12, v12, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingStart()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mHorizontalSpacing:I

    move/from16 v19, v0

    add-int v19, v19, v10

    add-int v17, v18, v19

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_2

    :cond_4
    add-int v18, v17, v10

    move/from16 v0, v18

    if-le v0, v6, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mVerticalSpacing:I

    move/from16 v18, v0

    add-int v18, v18, v9

    add-int v12, v12, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingStart()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mHorizontalSpacing:I

    move/from16 v19, v0

    add-int v19, v19, v10

    add-int v17, v18, v19

    goto/16 :goto_1

    :cond_5
    if-nez v12, :cond_6

    add-int/2addr v12, v9

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mHorizontalSpacing:I

    move/from16 v18, v0

    add-int v18, v18, v10

    add-int v17, v17, v18

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingBottom()I

    move-result v19

    add-int v18, v18, v19

    add-int v12, v12, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getMinimumHeight()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getMinimumHeight()I

    move-result v12

    :cond_8
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingBottom()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v12, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mScrollViewHeight:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mNeedPaddingChange:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mNeedPaddingChange:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingTop()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingRight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getPaddingBottom()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDisplay(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->bDisplaying:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->bDisplaying:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->setLayoutDimensions()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->changeDetailTextViewDescription(Landroid/view/View;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method public setFilterClickListener(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mFilterClickListener:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->mFilterClickListener:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupViewPager$OnFilterClickListener;

    :cond_0
    return-void
.end method

.method public setUnselectedState()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterGroupDetailView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
