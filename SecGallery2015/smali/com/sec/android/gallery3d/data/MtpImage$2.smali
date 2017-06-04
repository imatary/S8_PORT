.class Lcom/sec/android/gallery3d/data/MtpImage$2;
.super Ljava/lang/Object;
.source "MtpImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/MtpImage;->requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
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
        "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/MtpImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/MtpImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpImage$2;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpImage$2;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    # getter for: Lcom/sec/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MtpImage;->access$400(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpImage$2;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    # getter for: Lcom/sec/android/gallery3d/data/MtpImage;->mDeviceId:I
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/MtpImage;->access$200(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$2;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    # getter for: Lcom/sec/android/gallery3d/data/MtpImage;->mObjectId:I
    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$300(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$2;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    # getter for: Lcom/sec/android/gallery3d/data/MtpImage;->mObjectSize:I
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MtpImage;->access$1000(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/MtpClient;->getObject(Ljava/lang/String;II)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "MtpImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Google MtpDevice returns large image to null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$2;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    # getter for: Lcom/sec/android/gallery3d/data/MtpImage;->mFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$500(Lcom/sec/android/gallery3d/data/MtpImage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    invoke-static {v0, v5, v1, v5, v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->newInstance([BIIZZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/MtpImage$2;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method
