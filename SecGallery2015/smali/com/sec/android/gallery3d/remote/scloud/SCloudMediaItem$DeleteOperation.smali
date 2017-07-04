.class Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$DeleteOperation;
.super Ljava/lang/Object;
.source "SCloudMediaItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/dboperation/IOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;)V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->access$000(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteByServerId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$DeleteOperation;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
