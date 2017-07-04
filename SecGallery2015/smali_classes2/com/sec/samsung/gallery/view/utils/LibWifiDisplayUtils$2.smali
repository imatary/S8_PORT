.class Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "LibWifiDisplayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$2;->this$0:Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "LibWifiDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receiver got : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$2;->this$0:Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->access$100(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;)Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->getWifiDisplayStatus(Landroid/content/Intent;)Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "LibWifiDisplayUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi display status changed! Scanstate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;->isScanning()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ActiveDisplayState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;->getActiveDisplayState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$2;->this$0:Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;

    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->access$202(Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;)Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils$2;->this$0:Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/LibWifiDisplayUtils;->applyState()V

    :cond_1
    return-void
.end method
