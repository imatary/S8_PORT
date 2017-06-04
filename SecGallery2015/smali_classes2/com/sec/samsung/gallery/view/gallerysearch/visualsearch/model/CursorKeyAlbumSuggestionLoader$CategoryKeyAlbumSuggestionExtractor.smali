.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;
.super Ljava/lang/Object;
.source "CursorKeyAlbumSuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryKeyAlbumSuggestionExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
.end method

.method private extractCategory(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_DIR:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0a02ba

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/sec/android/gallery3d/util/BucketNames;->getBucketName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v3

    :cond_1
    return-object v1
.end method

.method private extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractCount(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractIsCloud(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractMediaType(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractOrientation(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->extractCount(Landroid/database/Cursor;)I

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->extractIsCloud(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setIsCloud(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getIsCloud()I

    move-result v4

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->extractCategory(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->extractMediaType(Landroid/database/Cursor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setMediaType(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->extractOrientation(Landroid/database/Cursor;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setOrientation(I)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v3, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader$CoverBitmapTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;

    invoke-direct {v1, v3, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader$CoverBitmapTask;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    :try_start_0
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader$CoverBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader$CoverBitmapTask;->cancel(Z)Z

    goto :goto_0
.end method
