.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;
.super Ljava/lang/Object;
.source "CursorRecentSuggestionLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;
    }
.end annotation


# static fields
.field private static final INDEX_TAG_VIEW_FIELD_TAG_DATA:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CursorRecentSuggestionLoader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tag_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getVisionCloudUtils()Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    return-object v0
.end method

.method private collectDocumentNOthers()Ljava/lang/StringBuffer;
    .locals 10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "suggestion_list_recent_category"

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_OTHERS_CATEGORY:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "\'"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\',"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v5, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->FEATURE_USE_SERVER_BASED_SEARCH:Z

    if-eqz v5, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_EXPAND_DOCUMENT_CATEGORY:[Ljava/lang/String;

    :goto_1
    array-length v5, v2

    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v0, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "\',"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_DOCUMENT_CATEGORY:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    return-object v1
.end method

.method private getRecentlyCategoryProjection()Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->PROJECTION:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getRecentlySQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FROM files INNER JOIN tag_map ON _id = fk_file_id INNER JOIN tags ON fk_tag_id = tags_id WHERE tag_type != 1 and tag_data in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->collectDocumentNOthers()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (group_id = 0 OR (group_id != 0 AND best_image = 1)) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (media_type IS NOT null) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ORDER BY tag_map.tagmap_id DESC limit 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSearchingRecentlyCategoryUri()Landroid/net/Uri;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->getRecentlyCategoryProjection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->getRecentlySQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "rawquery"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "rawquery"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader$RecentSuggestionExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Recent"

    return-object v0
.end method

.method public getCategoryCursor()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorRecentSuggestionLoader;->getSearchingRecentlyCategoryUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "CursorRecentSuggestionLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
