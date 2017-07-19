.class Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$1;
.super Landroid/view/OrientationEventListener;
.source "CameraOrientationEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const-string v0, "CameraOrientationEvtMgr"

    const-string v1, "android onOrientationChanged - ORIENTATION_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->access$000(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->access$002(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$1;->this$0:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->access$000(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->access$100(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;I)V

    goto :goto_0
.end method
