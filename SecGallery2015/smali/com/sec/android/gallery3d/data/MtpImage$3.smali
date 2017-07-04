.class Lcom/sec/android/gallery3d/data/MtpImage$3;
.super Ljava/lang/Object;
.source "MtpImage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/MtpImage;->importFile(Ljava/io/File;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/MtpImage;

.field final synthetic val$destPathFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/MtpImage;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpImage$3;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/MtpImage$3;->val$destPathFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpImage$3;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MtpImage;->access$400(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpImage$3;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/MtpImage;->access$200(Lcom/sec/android/gallery3d/data/MtpImage;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage$3;->this$0:Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MtpImage;->access$1100(Lcom/sec/android/gallery3d/data/MtpImage;)Landroid/mtp/MtpObjectInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage$3;->val$destPathFile:Ljava/io/File;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/MtpContext;->importFile(Ljava/lang/String;Landroid/mtp/MtpObjectInfo;Ljava/io/File;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MtpImage"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpImage$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
