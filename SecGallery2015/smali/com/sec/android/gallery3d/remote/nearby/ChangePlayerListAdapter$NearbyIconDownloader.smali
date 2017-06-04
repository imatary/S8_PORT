.class public Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;
.super Landroid/os/AsyncTask;
.source "ChangePlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearbyIconDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Handler;",
        "Landroid/net/Uri;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mURLConnection:Ljava/net/HttpURLConnection;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mURLConnection:Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private initURLConnection()V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mURLConnection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ChangePlayerListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mURLConnection:Ljava/net/HttpURLConnection;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->initURLConnection()V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mURLConnection:Ljava/net/HttpURLConnection;

    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter;->sIconCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v3, "ChangePlayerListAdapter"

    const-string/jumbo v4, "Error while retrieving nearby Icon Downloader"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ChangePlayerListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_3
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->doInBackground([Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
