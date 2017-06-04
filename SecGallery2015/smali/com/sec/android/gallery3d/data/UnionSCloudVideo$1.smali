.class Lcom/sec/android/gallery3d/data/UnionSCloudVideo$1;
.super Ljava/lang/Object;
.source "UnionSCloudVideo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->getVideoURL()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UnionSCloudVideo;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/UnionSCloudVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo$1;->this$0:Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v2, Lcom/sec/android/gallery3d/data/UnionMediaItem;->SCloudVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo$1;->this$0:Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    iget v3, v3, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->cloudId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo$1;->this$0:Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->getStreamingURL(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/samsung/android/scloud/cloudagent/exception/CloudException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UnionSCloudVideo"

    invoke-virtual {v0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method
