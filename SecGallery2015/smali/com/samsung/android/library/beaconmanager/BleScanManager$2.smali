.class Lcom/samsung/android/library/beaconmanager/BleScanManager$2;
.super Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub;
.source "BleScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/library/beaconmanager/BleScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    invoke-direct {p0}, Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanRegisteredTv(Lcom/samsung/android/library/beaconmanager/Tv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScanRegisteredTv temp debug"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    # getter for: Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
    invoke-static {v0}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$300(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;->this$0:Lcom/samsung/android/library/beaconmanager/BleScanManager;

    # getter for: Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
    invoke-static {v0}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->access$300(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;->onScanRegisteredTv(Lcom/samsung/android/library/beaconmanager/Tv;)V

    :cond_0
    return-void
.end method
