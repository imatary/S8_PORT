.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$1;
.super Landroid/view/OrientationEventListener;
.source "CameraOrientationEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android onOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->access$100()I

    move-result v0

    if-eq v0, p1, :cond_0

    # setter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I
    invoke-static {p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->access$102(I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->mLastOrientation:I
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->access$100()I

    move-result v1

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->notifyOrientationChaged(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/CameraOrientationEventManager;I)V

    goto :goto_0
.end method
