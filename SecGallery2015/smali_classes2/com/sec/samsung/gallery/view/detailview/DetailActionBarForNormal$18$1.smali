.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;
.super Ljava/lang/Object;
.source "DetailActionBarForNormal.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->onMenuVisibilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-static {p2}, Lcom/samsung/android/app/qragent/service/IQRService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/qragent/service/IQRService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$1902(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/samsung/android/app/qragent/service/IQRService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/samsung/android/app/qragent/service/IQRService;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/qragent/service/IQRService;->isQRCode(Landroid/graphics/Bitmap;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$2102(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$1802(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$2100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$2200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Landroid/view/Menu;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DetailActionBarForNorm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalStateException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "DetailActionBarForNorm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18$1;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->access$1902(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;

    return-void
.end method
