.class Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->updateTextureViewSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    iput p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureViewLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$1300(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$1500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$1400(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mPreviewSize:Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;
    invoke-static {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$1400(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil$Size;->height()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$5;->val$orientation:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->setAspectRatio(III)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
