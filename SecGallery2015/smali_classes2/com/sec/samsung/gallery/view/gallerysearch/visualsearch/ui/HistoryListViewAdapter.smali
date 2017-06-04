.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "HistoryListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryItemObserver;,
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;
    }
.end annotation


# static fields
.field private static final HISTORY_LIST_MAX_COUNT:I = 0x1e

.field private static final THRESHOLD_SHOW_HISTORY_DELETE_BUTTON:I = 0xa


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private final mEllipsize:Z

.field private mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

.field private mHistoryItemObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryItemObserver;

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
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mEllipsize:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->initHistoryList()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->deleteHistoryItem(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->hideSoftInput(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->searchByKeyword(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized deleteHistoryItem(Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->deleteHistory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->updateHistoryList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deleteOverMaxCountItems()V
    .locals 4

    const/16 v0, 0x1e

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->deleteHistory(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->updateHistoryList()V

    return-void
.end method

.method private hideSoftInput(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUSAModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->minimizeSoftInput()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private initHistoryList()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getHistoryItemList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mItems:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private searchByKeyword(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SEARCH_BY_KEYWORD"

    invoke-virtual {v0, v1, p1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public deleteAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->deleteAllHistory()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->updateHistoryList()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04007a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;

    invoke-direct {v1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    if-nez v0, :cond_2

    const/4 p2, 0x0

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mEllipsize:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->textView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->deleteIconView:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->deleteIconView:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->deleteIconView:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$3;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$4;

    invoke-direct {v3, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$5;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$5;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$6;

    invoke-direct {v3, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$6;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1
.end method

.method public registerHistoryItemObserver(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryItemObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mHistoryItemObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryItemObserver;

    return-void
.end method

.method public updateHistoryList()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getHistoryItemList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->deleteOverMaxCountItems()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mHistoryItemObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryItemObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter;->mHistoryItemObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryItemObserver;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/HistoryListViewAdapter$HistoryItemObserver;->onChanged()V

    :cond_1
    return-void
.end method
