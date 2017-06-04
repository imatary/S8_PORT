.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;
.source "CursorKeyFavoriteSuggestionLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader$CategoryKeyFavoriteSuggestionExtractor;
    }
.end annotation


# static fields
.field private static final INDEX_FILE_VIEW_FIELD_CLOUD_THUMB_PATH:I = 0x4

.field private static final INDEX_FILE_VIEW_FIELD_DATA:I = 0x0

.field private static final INDEX_FILE_VIEW_FIELD_IS_CLOUD:I = 0x3

.field private static final INDEX_FILE_VIEW_FIELD_MEDIA_TYPE:I = 0x2

.field private static final INDEX_FILE_VIEW_FIELD_ORIENTATION:I = 0x1

.field private static final ORDER_BY:Ljava/lang/String; = "datetaken DESC, _id DESC limit 1"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_CLOUD:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CursorKeyFavoriteSuggestionLoader"


# instance fields
.field private final mSuggestedKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "is_favorite = 1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

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

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->SELECTION:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v2

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v3

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v2

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v3

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v4

    const-string/jumbo v1, "is_cloud"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->PROJECTION_CLOUD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader$CategoryKeyFavoriteSuggestionExtractor;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader$CategoryKeyFavoriteSuggestionExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader$CategoryKeyFavoriteSuggestionExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryCursor()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->PROJECTION_CLOUD:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->SELECTION:Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "datetaken DESC, _id DESC limit 1"

    const-string/jumbo v6, "CursorKeyFavoriteSuggestionLoader"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeyFavoriteSuggestionLoader;->PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method
