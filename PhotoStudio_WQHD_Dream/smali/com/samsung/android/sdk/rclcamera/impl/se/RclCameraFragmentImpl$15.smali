.class Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$15;
.super Ljava/lang/Object;
.source "RclCameraFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->requestExpandAndWait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$15;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Actual request start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$15;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$15;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setExpansion(Z)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$15;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Actual request done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$15;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mExpandCondition:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1000(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method
