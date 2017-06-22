.class Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;
.super Ljava/lang/Object;
.source "MotionPanorama.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->showPanoramaToastPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;->val$error:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$000(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const v1, 0x7f0901a1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/MotionPanorama$3;->this$0:Lcom/sec/android/app/camera/shootingmode/MotionPanorama;

    # getter for: Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/MotionPanorama;->access$000(Lcom/sec/android/app/camera/shootingmode/MotionPanorama;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const v1, 0x7f0901e4

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
