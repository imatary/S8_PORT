.class Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;
.super Ljava/lang/Object;
.source "GallerySearchDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DCMSearchResult"
.end annotation


# instance fields
.field private final searchParser:Lcom/sec/android/gallery3d/provider/SearchParser;

.field final synthetic this$0:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;Lcom/sec/android/gallery3d/provider/SearchParser;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->this$0:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->searchParser:Lcom/sec/android/gallery3d/provider/SearchParser;

    return-void
.end method

.method private addCursorToResultCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "uri"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "title"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mimetype"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const/4 v4, 0x3

    aput-object v0, v2, v4

    const/4 v4, 0x4

    aput-object v0, v2, v4

    const/4 v4, 0x5

    aput-object v5, v2, v4

    const/4 v4, 0x6

    aput-object v5, v2, v4

    const/4 v4, 0x7

    aput-object v5, v2, v4

    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    return-void
.end method

.method private getParserUri()Landroid/net/Uri;
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->searchParser:Lcom/sec/android/gallery3d/provider/SearchParser;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/provider/SearchParser;->getSearchFilter()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "images"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->searchParser:Lcom/sec/android/gallery3d/provider/SearchParser;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/provider/SearchParser;->getLimit()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->searchParser:Lcom/sec/android/gallery3d/provider/SearchParser;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/provider/SearchParser;->getSearchFilter()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "videos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_VIDEO_TABLE_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private updateImageResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 6

    sget-object v5, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->updateResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private updateParserResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->getParserUri()Landroid/net/Uri;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->updateResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private updateResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 9

    if-nez p5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "date DESC"

    const-string/jumbo v6, "GallerySearchProvider"

    move-object v0, p3

    move-object v1, p5

    move-object v2, p2

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-direct {p0, p1, v7}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->addCursorToResultCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "GallerySearchProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not getImages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private updateVideoResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 6

    sget-object v5, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_VIDEO_TABLE_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->updateResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public invoke()Landroid/database/Cursor;
    .locals 6

    new-instance v2, Landroid/database/MatrixCursor;

    # getter for: Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->DCM_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->access$000()[Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-direct {v2, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->this$0:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;

    # getter for: Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->mDcmImageProjection:[Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->access$100(Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->this$0:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;

    # getter for: Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->access$200(Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->this$0:Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;

    iget-object v5, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->searchParser:Lcom/sec/android/gallery3d/provider/SearchParser;

    # invokes: Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->createKeyWordQueryDCM(Lcom/sec/android/gallery3d/provider/SearchParser;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;->access$300(Lcom/sec/android/gallery3d/provider/GallerySearchDatabase;Lcom/sec/android/gallery3d/provider/SearchParser;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->searchParser:Lcom/sec/android/gallery3d/provider/SearchParser;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/provider/SearchParser;->getSearchFilter()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->updateImageResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->updateVideoResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/sec/android/gallery3d/provider/GallerySearchDatabase$DCMSearchResult;->updateParserResult(Landroid/database/MatrixCursor;[Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method
