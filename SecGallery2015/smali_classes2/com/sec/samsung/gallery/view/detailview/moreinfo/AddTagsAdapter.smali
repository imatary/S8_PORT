.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddTagsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AddTagsAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEdit:Landroid/widget/EditText;

.field private mFilteredTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterim:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyTagsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

.field private final mSuggestionLoaderListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

.field private final mTotalTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mTotalTagList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mMyTagsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mFilteredTagList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInfos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInterim:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mSuggestionLoaderListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInflater:Landroid/view/LayoutInflater;

    check-cast p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    const v0, 0x7f120089

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->initData()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->addSuggestionItemList()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mFilteredTagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mFilteredTagList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->notifyDirty()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mMyTagsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mTotalTagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->getData()V

    return-void
.end method

.method private addSuggestionItemList()V
    .locals 9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getCategory()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v4, v7, v8

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mTotalTagList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->setData()V

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "latest_detail_item_media_id"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mSuggestionLoaderListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->setDataLoaderListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mSuggestionDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SuggestionDataLoader;->load()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->updateSearchedKeywordList()V

    return-void

    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$CategoryLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private notifyDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setData()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInterim:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mMyTagsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mFilteredTagList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mFilteredTagList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mMyTagsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mTotalTagList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mMyTagsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateSearchedKeywordList()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getHistoryItemList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mTotalTagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mFilteredTagList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15

    if-nez p2, :cond_0

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f04002b

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mFilteredTagList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    add-int v1, v12, v7

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v12

    if-lez v12, :cond_3

    if-ltz v7, :cond_3

    if-ltz v1, :cond_3

    const v12, 0x7f12008c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v4, Lcom/sec/samsung/gallery/lib/factory/TextUtilsWrapper;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/lib/factory/TextUtilsWrapper;-><init>()V

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mContext:Landroid/content/Context;

    invoke-interface {v4, v12}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/lib/libinterface/TextUtilsInterface;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v7, v1}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    invoke-interface {v10, v12, v13, v14}, Lcom/sec/samsung/gallery/lib/libinterface/TextUtilsInterface;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_1

    move v7, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int v1, v2, v12

    :cond_1
    if-ltz v7, :cond_2

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v12

    if-gt v1, v12, :cond_2

    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f100112

    invoke-static {v13, v14}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v13, 0x21

    invoke-interface {v6, v12, v7, v1, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v12, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;

    move/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;->mFilteredTagList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    const v12, 0x7f12008d

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object p2

    :cond_4
    const v12, 0x7f12008d

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
