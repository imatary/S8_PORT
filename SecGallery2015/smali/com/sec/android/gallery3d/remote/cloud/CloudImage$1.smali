.class Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;
.super Ljava/lang/Object;
.source "CloudImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->startSyncCloud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field is:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    sget-object v2, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mBaseImageUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$600(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->is:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$700()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$700()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "CloudImage"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->is:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$700()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$700()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->is:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$700()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mSyncIdList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$700()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$1;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    throw v2
.end method
