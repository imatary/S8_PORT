.class final Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer$2;
.super Ljava/lang/Object;
.source "SCloudRefer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->cloudAlbumsSyncPause(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isPause:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer$2;->val$isPause:Z

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "SCloudRefer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call cloud albums sync pause["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer$2;->val$isPause:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer$2;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer$2;->val$isPause:Z

    invoke-static {v1, v2}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->syncPause(Landroid/content/Context;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SCloudRefer"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
