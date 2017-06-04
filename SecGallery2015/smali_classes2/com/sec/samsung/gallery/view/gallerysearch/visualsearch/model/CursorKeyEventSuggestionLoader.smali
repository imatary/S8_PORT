.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;
.source "CursorKeyEventSuggestionLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader$CategoryKeyEventSuggestionExtractor;
    }
.end annotation


# static fields
.field private static final EVENT_QUERY_FROM:Ljava/lang/String; = " FROM story LEFT OUTER JOIN story_map ON fk_story_id=story_id LEFT OUTER JOIN files ON fk_file_id = _id "

.field private static final EVENT_QUERY_GROUP_BY:Ljava/lang/String; = " GROUP BY story.title HAVING max(datetaken)"

.field private static final EVENT_QUERY_SELECT:Ljava/lang/String; = "SELECT fk_file_id AS file_id,datetaken,story.title,count(*),_data,orientation,media_type "

.field private static final EVENT_QUERY_SELECT_CLOUD:Ljava/lang/String; = "SELECT fk_file_id AS file_id,datetaken,story.title,count(*),_data,orientation,media_type,is_cloud,cloud_thumb_path "

.field private static final EVENT_QUERY_STR:Ljava/lang/String;

.field private static final EVENT_QUERY_WHERE:Ljava/lang/String; = " WHERE (file_id IS NULL AND uri IS NULL) OR (file_id IS NOT NULL AND uri IS NOT NULL) "

.field private static final EVENT_QUERY_WHERE_EXTRA:Ljava/lang/String;

.field private static final INDEX_DATA:I = 0x4

.field private static final INDEX_MEDIA_COUNT:I = 0x3

.field private static final INDEX_MEDIA_TYPE:I = 0x6

.field private static final INDEX_ORIENTATION:I = 0x5

.field private static final INDEX_STORY_TITLE:I = 0x2

.field private static final INDEX_VIEW_FIELD_CLOUD_THUMB_PATH:I = 0x8

.field private static final INDEX_VIEW_FIELD_IS_CLOUD:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CursorKeyEventSuggestionLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " AND is_shared != 1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (media_type IS NOT null) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;->EVENT_QUERY_WHERE_EXTRA:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SELECT fk_file_id AS file_id,datetaken,story.title,count(*),_data,orientation,media_type,is_cloud,cloud_thumb_path "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM story LEFT OUTER JOIN story_map ON fk_story_id=story_id LEFT OUTER JOIN files ON fk_file_id = _id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE (file_id IS NULL AND uri IS NULL) OR (file_id IS NOT NULL AND uri IS NOT NULL) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;->EVENT_QUERY_WHERE_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GROUP BY story.title HAVING max(datetaken)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;->EVENT_QUERY_STR:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "SELECT fk_file_id AS file_id,datetaken,story.title,count(*),_data,orientation,media_type "

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader$CategoryKeyEventSuggestionExtractor;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader$CategoryKeyEventSuggestionExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader$CategoryKeyEventSuggestionExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;->mKeyword:Ljava/lang/String;

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

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "rawquery"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "rawquery"

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;->EVENT_QUERY_STR:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyEventSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "CursorKeyEventSuggestionLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
