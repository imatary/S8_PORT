.class Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$4;
.super Landroid/content/BroadcastReceiver;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$4;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SinglePhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive() Action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$4;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/app/LoadingListener;->onLoadingFinished(Z)V

    :cond_0
    return-void
.end method
