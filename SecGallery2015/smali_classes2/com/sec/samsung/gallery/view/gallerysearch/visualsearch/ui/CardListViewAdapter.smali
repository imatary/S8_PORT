.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;
.source "CardListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;,
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;,
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter",
        "<",
        "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARROW_ROTATION_DURATION:I = 0x96

.field private static final CATEGORY_ORDER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEATURE_IS_TABLET:Z

.field private static final FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

.field private static final NUM_COLUMN_LAND:I

.field private static final NUM_COLUMN_PORT:I

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CardListViewAdapter"


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

.field private mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

.field private mImageThumbSize:I

.field private mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

.field private mOnRefreshListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->FEATURE_IS_TABLET:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->NUM_COLUMN_PORT:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->NUM_COLUMN_LAND:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    const-string/jumbo v1, "My tags"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    const-string/jumbo v1, "People"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    const-string/jumbo v1, "Documents"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    const-string/jumbo v1, "Camera mode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    const-string/jumbo v1, "Others"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mState:I

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mCategories:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mImageThumbSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->createListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->configureItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->configureTempItem(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mOnRefreshListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mState:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->getColumnCount()I

    move-result v0

    return v0
.end method

.method private configureItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->setItems(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized configureTempItem(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    sget-object v7, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    sget-object v7, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->CATEGORY_ORDER:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v6, v3, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-ge v6, v3, :cond_2

    invoke-interface {p1, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mCategories:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->createListItem(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->setItem(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_2
    add-int/lit8 v7, v1, 0x1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v1, 0x1

    invoke-interface {p1, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mCategories:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->createListItem(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;

    move-result-object v0

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v0, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->setItem(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ListItem;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void
.end method

.method private createListItem(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0
.end method

.method private createListItems(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->size()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getColumnCount()I
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->NUM_COLUMN_LAND:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->NUM_COLUMN_PORT:I

    goto :goto_0
.end method


# virtual methods
.method public checkCategoryNameAndCount(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->createListItem(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;->getCount()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getCategoryIndex(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getVisualSearchVisibleItemCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->visibleItems:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->visibleItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public isDataLoaderRunning()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstLoadingState()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->isFirstLoadingState()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->onBindViewHolder(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    invoke-virtual {p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->bind(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;",
            ">.com/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter$ViewHolder;"
        }
    .end annotation

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    const v1, 0x7f04008f

    invoke-virtual {p0, v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/ExpandableRecyclerAdapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mState:I

    return-void
.end method

.method public reloadData(Z)V
    .locals 4

    const-string/jumbo v1, "CardListViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reloadData :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$2;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->process()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mState:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mCategories:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mCategories:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->createListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->configureItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setDataLoader(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->reloadData(Z)V

    return-void
.end method

.method public setImageThumbSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mImageThumbSize:I

    return-void
.end method

.method public setImageWorker(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    return-void
.end method

.method public setOnRefreshListener(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mOnRefreshListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;

    return-void
.end method
