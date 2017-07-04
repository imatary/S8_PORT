.class Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1$1;
.super Ljava/lang/Object;
.source "NearbyItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1$1;->this$2:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1$1;->this$2:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;

    iget-object v1, v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->access$600(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;)Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteMediaItem"

    const-string/jumbo v2, "error during onCancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
