.class Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$1;
.super Ljava/lang/Object;
.source "SlinkNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$1;->this$1:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$1;->this$1:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mfl_ApiLib_SlinkWakeLock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Wake lock finalized without being released!!! tag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$1;->this$1:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->access$0(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$1;->this$1:Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;->release()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
