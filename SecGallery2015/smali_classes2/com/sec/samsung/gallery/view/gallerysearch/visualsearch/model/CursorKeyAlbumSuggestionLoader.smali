.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;
.source "CursorKeyAlbumSuggestionLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;
    }
.end annotation


# static fields
.field private static final ALBUM_QUERY_CLOUD_SELECT:Ljava/lang/String; = "SELECT bucket_display_name,_data,media_type,count(*),orientation,is_cloud,cloud_thumb_path FROM "

.field private static final ALBUM_QUERY_GROUP_BY:Ljava/lang/String; = " GROUP BY bucket_display_name"

.field private static final ALBUM_QUERY_INNER_CLOUD_SELECT:Ljava/lang/String; = " (SELECT bucket_id,bucket_display_name,_data,media_type,orientation,is_cloud,cloud_thumb_path FROM files "

.field private static final ALBUM_QUERY_INNER_ORDER_BY:Ljava/lang/String; = " ORDER BY datetaken ASC, _id ASC) "

.field private static final ALBUM_QUERY_INNER_SELECT:Ljava/lang/String; = " (SELECT bucket_id,bucket_display_name,_data,media_type,orientation FROM files "

.field private static final ALBUM_QUERY_INNER_WHERE:Ljava/lang/String;

.field private static final ALBUM_QUERY_SELECT:Ljava/lang/String; = "SELECT bucket_display_name,_data,media_type,count(*),orientation FROM "

.field private static final ALBUM_QUERY_STR:Ljava/lang/String;

.field private static final INDEX_ALBUM_VIEW_FIELD_CLOUD_THUMB_PATH:I = 0x6

.field private static final INDEX_ALBUM_VIEW_FIELD_IS_CLOUD:I = 0x5

.field private static final INDEX_BUCKET_DISPLAY_NAME:I = 0x0

.field private static final INDEX_DATA:I = 0x1

.field private static final INDEX_MEDIA_COUNT:I = 0x3

.field private static final INDEX_MEDIA_TYPE:I = 0x2

.field private static final INDEX_ORIENTATION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CursorKeyAlbumSuggestionLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

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

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->ALBUM_QUERY_INNER_WHERE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SELECT bucket_display_name,_data,media_type,count(*),orientation,is_cloud,cloud_thumb_path FROM  (SELECT bucket_id,bucket_display_name,_data,media_type,orientation,is_cloud,cloud_thumb_path FROM files "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->ALBUM_QUERY_INNER_WHERE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ORDER BY datetaken ASC, _id ASC) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GROUP BY bucket_display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->ALBUM_QUERY_STR:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "SELECT bucket_display_name,_data,media_type,count(*),orientation FROM  (SELECT bucket_id,bucket_display_name,_data,media_type,orientation FROM files "

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader$CategoryKeyAlbumSuggestionExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->mKeyword:Ljava/lang/String;

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

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->ALBUM_QUERY_STR:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyAlbumSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "CursorKeyAlbumSuggestionLoader"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
