.class Lcom/sec/android/gallery3d/data/MtpDevice$1;
.super Landroid/os/Handler;
.source "MtpDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/data/MtpDevice;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MtpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/MtpDevice;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/MtpDevice;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MtpDevice$1;->this$0:Lcom/sec/android/gallery3d/data/MtpDevice;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice$1;->this$0:Lcom/sec/android/gallery3d/data/MtpDevice;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MtpDevice;->access$000(Lcom/sec/android/gallery3d/data/MtpDevice;)Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MtpContext;->notifyDirty()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpDevice$1;->this$0:Lcom/sec/android/gallery3d/data/MtpDevice;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MtpDevice;->access$108(Lcom/sec/android/gallery3d/data/MtpDevice;)I

    :cond_0
    return-void
.end method
