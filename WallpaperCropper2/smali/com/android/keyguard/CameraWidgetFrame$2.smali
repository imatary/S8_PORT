.class Lcom/android/keyguard/CameraWidgetFrame$2;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v0}, Lcom/android/keyguard/CameraWidgetFrame;->access$100(Lcom/android/keyguard/CameraWidgetFrame;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Lcom/android/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v0}, Lcom/android/keyguard/CameraWidgetFrame;->access$200(Lcom/android/keyguard/CameraWidgetFrame;)Landroid/os/Handler;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/CameraWidgetFrame;->access$302(Lcom/android/keyguard/CameraWidgetFrame;J)J

    invoke-static {}, Lcom/android/keyguard/CameraWidgetFrame;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launching camera at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v3}, Lcom/android/keyguard/CameraWidgetFrame;->access$300(Lcom/android/keyguard/CameraWidgetFrame;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v1}, Lcom/android/keyguard/CameraWidgetFrame;->access$600(Lcom/android/keyguard/CameraWidgetFrame;)Lcom/android/keyguard/KeyguardActivityLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v2}, Lcom/android/keyguard/CameraWidgetFrame;->access$500(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Lcom/android/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0
.end method
