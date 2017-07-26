.class Lcom/sec/android/app/camera/shootingmode/RecordingController$2;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;->onMediaRecorderPrepared(Landroid/media/MediaRecorder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$2;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$2;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$400(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const v1, 0x7f090275

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
