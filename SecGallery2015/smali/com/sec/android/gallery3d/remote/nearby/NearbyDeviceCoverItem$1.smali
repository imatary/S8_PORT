.class Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$1;
.super Ljava/lang/Object;
.source "NearbyDeviceCoverItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$1;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02026c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropThumnailBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$1;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
