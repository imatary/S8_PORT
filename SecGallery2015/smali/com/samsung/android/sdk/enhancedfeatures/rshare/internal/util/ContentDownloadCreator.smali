.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadCreator;
.super Ljava/lang/Object;
.source "ContentDownloadCreator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContents(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;)J
    .locals 12

    const-wide/16 v8, -0x1

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "contents_token"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v7, "content_count"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getContentUrls()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "app"

    const-string/jumbo v10, "remoteshare"

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getFileSizes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v2, v10

    goto :goto_0

    :cond_0
    const-string/jumbo v7, "size"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v7, "to_list"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getGroupId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "description"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getFolderToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "dir"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "thumb"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getThumb()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "req_token"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getRequestToken()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v7

    sget-object v10, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v10, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    return-wide v8

    :cond_2
    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadCreator;->insertContents(Landroid/net/Uri;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    goto :goto_1
.end method

.method private static insertContents(Landroid/net/Uri;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;)Z
    .locals 14

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    const-string/jumbo v0, "content"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getThumb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getContentUrls()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_0
    if-ge v6, v9, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getContentUrls()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getFileNames()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getFileSizes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getFilePathOnServer()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadCreator;->storeContent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v8

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentDownloadCreator;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static storeContent(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;IZ)Landroid/content/ContentProviderOperation;
    .locals 6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p0, :cond_0

    const-string/jumbo v2, "public_url"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v2, "public_url"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "filename"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "file_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "content_type"

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_2

    invoke-virtual {p5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "chunk_forced"

    const-string/jumbo v4, "thumbnail"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p5

    :goto_1
    invoke-static {p5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    return-object v2

    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo v2, "public_url"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "originalUri and path both cannot be null,pass either one of them"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "chunk_forced"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p5

    goto :goto_1
.end method
