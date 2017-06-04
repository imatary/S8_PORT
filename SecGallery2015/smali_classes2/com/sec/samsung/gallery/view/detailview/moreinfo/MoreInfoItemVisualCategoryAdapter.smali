.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MoreInfoItemVisualCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;,
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final FILES_URI:Landroid/net/Uri;

.field private static final SCLOUD_FILES_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "VisualCategoryAdapter"


# instance fields
.field private final mBackupDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;",
            ">;"
        }
    .end annotation
.end field

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
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

.field private mEditMode:Z

.field private mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

.field private final mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

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

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->FILES_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->SCLOUD_FILES_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;Z)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mBackupDataSet:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDeleteList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mIsDisabledSearch:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->setExitTasksEarly(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->addNoCategory()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->searchByCategory(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->processCategoryDelete(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mCategories:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->createListItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->configureItems(Ljava/util/List;)V

    return-void
.end method

.method private addNoCategory()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->getNoInfoString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;-><init>(Ljava/lang/String;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBackupData()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mBackupDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private configureItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;->getCategoryItem()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getSubCategory()Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;

    invoke-direct {v5, v3, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;-><init>(Ljava/lang/String;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->notifyDirty()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->addNoCategory()V

    goto :goto_1
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
            "Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;",
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

    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;

    invoke-direct {v5, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryListItem;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getBaseUri()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v1, :cond_2

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->SCLOUD_FILES_URI:Landroid/net/Uri;

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->FILES_URI:Landroid/net/Uri;

    goto :goto_1
.end method

.method private getNoInfoString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTagName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->getEngString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private getTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->getEngString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, p1

    :cond_2
    return-object v0
.end method

.method private isEdited()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeDeleteAllList()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDeleteList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDirty()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mListeners:Ljava/util/ArrayList;

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

.method private processCategoryDelete(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->getTagName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->addNoCategory()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->isEdited()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->notifyDataSetChanged()V

    const-string/jumbo v1, "304"

    const-string/jumbo v2, "4526"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reloadData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$3;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->process()V

    return-void
.end method

.method private searchByCategory(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "MOREINFO_SEARCH_EVENT"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "303"

    const-string/jumbo v1, "4057"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method editCancel()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mBackupDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->clearBackupData()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->notifyDataSetChanged()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method editDone()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->isDataSetChanged()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->getBaseUri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDeleteList:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->updateCategoryType(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setVersion()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runCategoryTag()V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->clearBackupData()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "VisualCategoryAdapter"

    const-string/jumbo v1, "Error during set category"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method handleDeviceCogCategoryDelete()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->makeDeleteAllList()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->addNoCategory()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->isEdited()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->notifyDirty()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->runMoreInfoEvent(II)V

    const-string/jumbo v0, "304"

    const-string/jumbo v1, "4526"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method isDataSetChanged()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNoItem()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;->item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

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

    check-cast p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->onBindViewHolder(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;I)V
    .locals 6

    const v5, 0x3ecccccd    # 0.4f

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;->item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$CategoryData;->item:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    iget-object v2, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->loadImage(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;Landroid/widget/ImageView;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mIsDisabledSearch:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mEditMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mDeleteButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mDeleteButtonView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;->mDeleteButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400c2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mHandlerThreadTask:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/HandlerThreadTask;->stop()V

    :cond_0
    return-void
.end method

.method registerDataSetChangeListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/DataSetChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDataLoader(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataLoader:Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->reloadData()V

    return-void
.end method

.method setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    return-void
.end method

.method setMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mEditMode:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mEditMode:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mBackupDataSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mBackupDataSet:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDataset:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInterim:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setVisionCloudUtils(Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemVisualCategoryAdapter;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    return-void
.end method
