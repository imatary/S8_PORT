.class Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$1;
.super Landroid/os/Handler;
.source "CameraSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->access$000(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->access$000(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$OnCameraSettingChangedListener;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-interface {v1, v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting$OnCameraSettingChangedListener;->onCameraSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method
