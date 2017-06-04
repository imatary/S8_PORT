.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MoreInfoItemVisualPeopleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$CategoryListItem;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;",
        ">;"
    }
.end annotation


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

.field private mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

.field private final mDataset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

.field private final mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

.field private final mIsDisabledSearch:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/DataSetChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mIsDisabledSearch:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->setExitTasksEarly(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->addNoPeople()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mCategories:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->createListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->configureItems(Ljava/util/List;)V

    return-void
.end method

.method private addNoPeople()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->getNoInfoString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;-><init>(Ljava/lang/String;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private configureItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$CategoryListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$CategoryListItem;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$CategoryListItem;->getCategoryItem()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getPersonName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;-><init>(Ljava/lang/String;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->addNoPeople()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->notifyDirty()V

    return-void
.end method

.method private createListItems(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$CategoryListItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$CategoryListItem;

    invoke-direct {v5, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$CategoryListItem;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getNoInfoString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a087f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyDirty()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/DataSetChangeListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/DataSetChangeListener;->dataChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reloadData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$2;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->process()V

    return-void
.end method

.method private searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "MOREINFO_SEARCH_EVENT"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNoItem()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;->item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->onBindViewHolder(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;I)V
    .locals 4

    const v3, 0x3ecccccd    # 0.4f

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;->item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$PeopleData;->item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->loadImage(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Landroid/widget/ImageView;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mIsDisabledSearch:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400cc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->stop()V

    :cond_0
    return-void
.end method

.method public registerDataSetChangeListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/DataSetChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDataLoader(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualPeopleAdapter;->reloadData()V

    return-void
.end method
