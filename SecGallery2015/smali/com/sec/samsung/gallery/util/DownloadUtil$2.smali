.class final Lcom/sec/samsung/gallery/util/DownloadUtil$2;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/util/DownloadUtil;->downloadEnqueue(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/DownloadUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/DownloadUtil$2;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/DownloadUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/DownloadUtil$2;->val$context:Landroid/content/Context;

    const v4, 0x7f0a02b7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/DownloadUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v3, "DownloadUtil"

    const-string/jumbo v4, "download is not available because network is not available."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/util/DownloadUtil$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/DownloadUtil$2;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/DownloadUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->download(Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
