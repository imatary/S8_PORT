.class public abstract Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
.super Ljava/lang/Object;
.source "CategoryDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;,
        Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;
    }
.end annotation


# static fields
.field private static final COUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CategoryDataLoader"


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

.field protected final mLocale:Ljava/util/Locale;

.field private mRequestCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->COUNT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mRequestCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mCategories:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->addItemsToCategory(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mRequestCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mRequestCount:I

    return p1
.end method

.method static synthetic access$110(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mRequestCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mRequestCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

    return-object v0
.end method

.method private addItemsToCategory(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Location"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->removeDuplicateCategoryItem(Ljava/util/List;)V

    :cond_0
    if-eqz p4, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->COUNT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    invoke-direct {v0, p2, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;->onDataLoadProgress()V

    :cond_2
    return-void
.end method

.method private declared-synchronized removeDuplicateCategoryItem(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getTranslatedSubCategory()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getTranslatedSubCategory()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->receiveSubCategoryItems(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method protected abstract addSubCategory(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isFirstLoadingState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mCategories:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->addSubCategory(Ljava/util/List;)V

    return-void
.end method

.method protected receiveSubCategoryItems(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mRequestCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mRequestCount:I

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$LoadCategoryItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setDataLoaderListener(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;->mListener:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader$DataLoaderListener;

    return-void
.end method
