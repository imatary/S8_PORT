.class Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem$1;
.super Ljava/lang/Object;
.source "MtpDevice.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
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
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem$1;->this$0:Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/MtpDevice$MtpDeviceCoverItem$1;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
