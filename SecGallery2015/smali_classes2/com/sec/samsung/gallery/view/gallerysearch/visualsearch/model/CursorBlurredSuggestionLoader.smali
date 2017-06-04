.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;
.source "CursorBlurredSuggestionLoader.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;
    }
.end annotation


# static fields
.field private static final INDEX_FILE_VIEW_FIELD_CLOUD_THUMB_PATH:I = 0x5

.field private static final INDEX_FILE_VIEW_FIELD_DATA:I = 0x1

.field private static final INDEX_FILE_VIEW_FIELD_FILE_ID:I = 0x0

.field private static final INDEX_FILE_VIEW_FIELD_IS_CLOUD:I = 0x4

.field private static final INDEX_FILE_VIEW_FIELD_MEDIA_TYPE:I = 0x3

.field private static final INDEX_FILE_VIEW_FIELD_ORIENTATION:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_CLOUD:[Ljava/lang/String;

.field private static final QUALITY_BAD:I = 0x0

.field private static final SELECTION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BlurredSuggestionLoader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsFromSuggestion:Z

.field private final mSuggestedKeyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->INCLUDE_VALID_ITEMS_ONLY:Ljava/lang/String;

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

    const-string/jumbo v1, "image_quality"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " limit 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->SELECTION:Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "orientation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "media_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "is_cloud"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->PROJECTION_CLOUD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorKeySuggestionLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mIsFromSuggestion:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractMediaId(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractCount(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mIsFromSuggestion:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractDataPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractIsCloud(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractOrientation(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->extractMediaType(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method private extractCloudThumbPath(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

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

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private extractIsCloud(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractMediaId(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractMediaType(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private extractOrientation(Landroid/database/Cursor;)I
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public createCategoryItem(Landroid/database/Cursor;)Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader$BlurredSuggestionExtractor;->create()Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mSuggestedKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryCursor()Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->FEATURE_USE_SCLOUD:Z

    if-eqz v0, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->PROJECTION_CLOUD:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->SELECTION:Ljava/lang/String;

    const-string/jumbo v6, "BlurredSuggestionLoader"

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorBlurredSuggestionLoader;->PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method
