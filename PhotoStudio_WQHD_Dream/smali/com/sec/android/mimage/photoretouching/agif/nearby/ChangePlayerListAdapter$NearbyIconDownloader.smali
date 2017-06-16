.class public Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter$NearbyIconDownloader;
.super Landroid/os/AsyncTask;
.source "ChangePlayerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter;
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
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Handler;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v5, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter;->sIconCache:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerListAdapter$NearbyIconDownloader;->doInBackground([Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
