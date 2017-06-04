.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;
.super Ljava/lang/Object;
.source "CursorKeyVideoSuggestionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryKeyVideoSuggestionExtractor"
.end annotation


# instance fields
.field private final mCategoryItemCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    return-void
.end method

.method private extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractCount(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method private extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractDate(Landroid/database/Cursor;)J
    .locals 2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private extractIsCloud(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractMediaId(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractUri(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    const-string/jumbo v4, "Camera mode"

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "suggestion_list_video"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    int-to-long v2, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->extractDate(Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDate(J)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->extractMediaId(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setItemId(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->extractCount(Landroid/database/Cursor;)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;->mIsFromSuggestion:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getItemId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    sget-boolean v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->extractIsCloud(Landroid/database/Cursor;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setIsCloud(I)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getIsCloud()I

    move-result v4

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->CLOUD_ONLY:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$SCLOUD_TYPE;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setDataPath(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->getDataPath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setMediaType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setSubCategoryName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->mCategoryItemCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->extractUri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->setUri(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader$CategoryKeyVideoSuggestionExtractor;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyVideoSuggestionLoader;->setCoverBitmap(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;)V

    goto :goto_0
.end method
