.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static getError(ILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorCode(I)V

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;->result2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorMessage(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorCode(I)V

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;->result2str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorMessage(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorDetail(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getShareProgress(Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;
    .locals 8

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;-><init>()V

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setData(Landroid/os/Bundle;)V

    const-string/jumbo v5, "extra_progress_file_name"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setCurrentProgressFileName(Ljava/lang/String;)V

    const-string/jumbo v5, "extra_progress_file_count"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setCurrentFileCount(I)V

    const-string/jumbo v5, "extra_progress_total_file_count"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setTotalFileCount(I)V

    const-string/jumbo v5, "extra_media_size"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setOverallTotalBytes(J)V

    const-string/jumbo v5, "extra_progress_media_bytes"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    move-wide v0, v2

    :cond_0
    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setOverallProgressBytes(J)V

    const-string/jumbo v5, "extra_progress_byte"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setCurrentProgressBytes(J)V

    const-string/jumbo v5, "extra_progress_total_file_length"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setCurrentProgressTotalBytes(J)V

    const-string/jumbo v5, "extra_req_token"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setRequestToken(J)V

    const-string/jumbo v5, "media_id"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;->setShareId(J)V

    return-object v4
.end method
