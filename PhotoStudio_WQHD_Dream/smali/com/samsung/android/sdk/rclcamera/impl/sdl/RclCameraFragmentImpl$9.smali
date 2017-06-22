.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$9;
.super Ljava/lang/Object;
.source "RclCameraFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->onErrorOccurred(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$9;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    iput p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$9;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$9;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCallback:Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$9;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mFragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/app/Fragment;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$9;->val$error:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;->onError(Landroid/app/Fragment;I)V

    return-void
.end method
