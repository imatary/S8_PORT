.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;
.super Ljava/lang/Object;
.source "CursorLocationSuggestionLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;
    }
.end annotation


# static fields
.field private static final INDEX_TAG_VIEW_FIELD_TAG_DATA:I = 0x0

.field private static final INDEX_TAG_VIEW_FIELD_TAG_TYPE:I = 0x1

.field private static final PROJECTION_DATA:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CursorLocationSuggestionLoader"

.field private static final TAG_TYPE_POI:I = 0x7

.field private static final TAG_TYPE_SELECTION:Ljava/lang/String; = ") AND tag_type IN (2) "

.field private static final TAG_TYPE_SELECTION_POI:Ljava/lang/String; = ") AND tag_type IN (2,7) "


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMediaId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tag_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "tag_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->PROJECTION_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mMediaId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mMediaId:I

    return v0
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader$LocationSuggestionExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Location"

    return-object v0
.end method

.method public getCategoryCursor()Landroid/database/Cursor;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v11, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mMediaId:I

    const v2, 0xf4240

    if-lt v0, v2, :cond_3

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v0, :cond_3

    const-string/jumbo v8, "cloud_id"

    :goto_0
    const/4 v7, 0x0

    const/4 v9, 0x0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->FEATURE_USE_POI_FOR_VISUAL_SEARCH:Z

    if-eqz v0, :cond_4

    const-string/jumbo v10, ") AND tag_type IN (2,7) "

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mMediaId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND tag_data IS NOT null limit 1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->TAGVIEW_TABLE_URI:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->PROJECTION_DATA:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "CursorLocationSuggestionLoader"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v7, 0x0

    if-eqz v9, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tag_data IN (\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\') AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " (media_type IS NOT null) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " GROUP BY tag_data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorLocationSuggestionLoader;->PROJECTION_DATA:[Ljava/lang/String;

    const-string/jumbo v6, "CursorLocationSuggestionLoader"

    move-object v4, v11

    move-object v5, v11

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_2
    return-object v7

    :cond_3
    const-string/jumbo v8, "media_id"

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v10, ") AND tag_type IN (2) "

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v7, 0x0

    throw v0
.end method
