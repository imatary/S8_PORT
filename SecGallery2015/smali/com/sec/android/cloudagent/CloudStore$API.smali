.class public final Lcom/sec/android/cloudagent/CloudStore$API;
.super Ljava/lang/Object;
.source "CloudStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cloudagent/CloudStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "API"
.end annotation


# direct methods
.method public static download(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "download"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "exception"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cloudagent/CloudStore$CloudSerializable;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sec/android/cloudagent/CloudStore$CloudSerializable;->o:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/cloudagent/exception/CloudException;

    throw v2

    :cond_0
    return-void
.end method

.method public static getStreamingURL(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "get_streaming_URL"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "STREAMING_URL"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v4, "exception"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cloudagent/CloudStore$CloudSerializable;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/sec/android/cloudagent/CloudStore$CloudSerializable;->o:Ljava/lang/Object;

    check-cast v4, Lcom/sec/android/cloudagent/exception/CloudException;

    throw v4

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "get_thumbnail"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "ThumbnailBitmap"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isCloudAvailable(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "cloud_available"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "cloudAvailable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static prefetchWithBlocking(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "prefetch_with_blocking"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "CACHED_PATH"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v4, "exception"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cloudagent/CloudStore$CloudSerializable;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/sec/android/cloudagent/CloudStore$CloudSerializable;->o:Ljava/lang/Object;

    check-cast v4, Lcom/sec/android/cloudagent/exception/CloudException;

    throw v4

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static sync(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "sync"

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
