.class Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$1;
.super Landroid/content/BroadcastReceiver;
.source "TemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->handleSIOPLevelChanged(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
