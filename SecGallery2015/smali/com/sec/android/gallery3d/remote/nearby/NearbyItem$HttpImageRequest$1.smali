.class Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;
.super Ljava/lang/Object;
.source "NearbyItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;->this$1:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest$1;)V

    const-string/jumbo v2, "NearbyImage_CancelInputStream"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
