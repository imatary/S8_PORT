.class public Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;
.super Ljava/lang/Object;
.source "HistoryViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$HistoryItemObserver;
    }
.end annotation


# instance fields
.field private final HISTORY_LIST_MAX_COUNT:I

.field private final THRESHOLD_HISTORY_DELETE_ALL:I

.field private final mActionbarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field private mContext:Landroid/content/Context;

.field private mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

.field private mHistoryItemObserver:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$HistoryItemObserver;

.field private mHistoryView:Landroid/widget/LinearLayout;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/samsung/gallery/view/ActionBarManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->THRESHOLD_HISTORY_DELETE_ALL:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->HISTORY_LIST_MAX_COUNT:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mActionbarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->deleteHistoryItem(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->hideSoftInput(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mActionbarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method private addFooterView()V
    .locals 5

    const v4, 0x7f040082

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private addView()V
    .locals 13

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f040083

    const/4 v9, 0x0

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v11, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v9, 0x7f12013f

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    const v9, 0x7f120141

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v11, 0xa

    if-ge v9, v11, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v6, v9, :cond_2

    :cond_0
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_1
    const v9, 0x7f120140

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v9, 0x7f12013e

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v4, v9}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    const/4 v9, 0x3

    invoke-interface {v8, v0, v9}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->setHoverPopupType(Landroid/view/View;I)V

    new-instance v9, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$1;

    invoke-direct {v9, p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$2;

    invoke-direct {v9, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v9, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$3;

    invoke-direct {v9, p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v9, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$4;

    invoke-direct {v9, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private declared-synchronized deleteHistoryItem(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->deleteHistory(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->updateHistoryList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private deleteOverMaxCountItems()V
    .locals 4

    const/16 v0, 0x1e

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->deleteHistory(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getHistoryItemList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->updateHistoryList()V

    return-void
.end method

.method private getItem(I)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    goto :goto_0
.end method

.method private hideSoftInput(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUSAModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->minimizeSoftInput()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getHistoryItemList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deleteAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->deleteAllHistory()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->updateHistoryList()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHistoryViewHeight()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b015f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v2, v1

    goto :goto_0
.end method

.method public registerHistoryItemObserver(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$HistoryItemObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryItemObserver:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$HistoryItemObserver;

    return-void
.end method

.method public setListLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->updateHistoryList()V

    return-void
.end method

.method public updateHistoryList()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getHistoryItemList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->addView()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->addFooterView()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->deleteOverMaxCountItems()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryItemObserver:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$HistoryItemObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->mHistoryItemObserver:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$HistoryItemObserver;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$HistoryItemObserver;->onChanged()V

    :cond_1
    return-void
.end method
