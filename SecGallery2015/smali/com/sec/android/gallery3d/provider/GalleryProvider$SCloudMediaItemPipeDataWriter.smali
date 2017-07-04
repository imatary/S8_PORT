.class final Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;
.super Ljava/lang/Object;
.source "GalleryProvider.java"

# interfaces
.implements Lcom/sec/android/gallery3d/provider/GalleryProvider$GalleryProviderPipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/provider/GalleryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SCloudMediaItemPipeDataWriter"
.end annotation


# instance fields
.field private final mItem:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

.field final synthetic this$0:Lcom/sec/android/gallery3d/provider/GalleryProvider;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/provider/GalleryProvider;Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->this$0:Lcom/sec/android/gallery3d/provider/GalleryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->mItem:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/provider/GalleryProvider;Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;Lcom/sec/android/gallery3d/provider/GalleryProvider$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;-><init>(Lcom/sec/android/gallery3d/provider/GalleryProvider;Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;)V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;)V
    .locals 13

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v8, "GalleryProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start open file outputId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->access$400()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->mItem:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getCachedPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    :cond_0
    if-eqz v2, :cond_1

    if-nez v5, :cond_4

    :cond_1
    iget-object v8, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->this$0:Lcom/sec/android/gallery3d/provider/GalleryProvider;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "GalleryProvider"

    const-string/jumbo v10, "Network is not available so can not download scloud cache file"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v8, "GalleryProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "end open file outputId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-void

    :cond_2
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->mItem:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    instance-of v8, v8, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->this$0:Lcom/sec/android/gallery3d/provider/GalleryProvider;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->mItem:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getServerId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "large"

    const/4 v12, 0x1

    invoke-static {v8, v10, v11, v12}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->downloadMediaCacheFileWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    :cond_4
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_2
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v7, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v3, v7}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->access$500(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string/jumbo v8, "GalleryProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "end open file outputId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v6, v7

    goto :goto_0

    :cond_5
    :try_start_5
    iget-object v8, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->mItem:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    instance-of v8, v8, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->this$0:Lcom/sec/android/gallery3d/provider/GalleryProvider;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/gallery3d/provider/GalleryProvider$SCloudMediaItemPipeDataWriter;->mItem:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getServerId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "hd"

    const/4 v12, 0x1

    invoke-static {v8, v10, v11, v12}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->downloadMediaCacheFileWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    const-string/jumbo v8, "GalleryProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "no cached file - req : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_3
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v0

    :goto_4
    :try_start_7
    const-string/jumbo v8, "GalleryProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "fail to download: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string/jumbo v8, "GalleryProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "end open file outputId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    :goto_5
    const-string/jumbo v9, "GalleryProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "end open file outputId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v8

    :catchall_2
    move-exception v8

    move-object v6, v7

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v6, v7

    goto :goto_4

    :catchall_3
    move-exception v8

    move-object v6, v7

    goto :goto_3
.end method
