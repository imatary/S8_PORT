.class Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$14;
.super Ljava/lang/Object;
.source "RclCameraFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->playCameraSound(II)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$14;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$14;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$800(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$14;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraSoundPoolId:[I
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$400(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$14;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraSoundIdToPlay:I
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$14;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraStreamVolume:F
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$600(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$14;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraStreamVolume:F
    invoke-static {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$600(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)F

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$14;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraSoundLoop:I
    invoke-static {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$700(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
