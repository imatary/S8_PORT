.class Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue$CommandHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->processNextCommand()V
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->access$000(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;)V

    :cond_0
    return-void
.end method
