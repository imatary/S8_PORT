.class Lcom/sec/android/app/camera/CameraExecutorManager$4;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeShowMenu(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

.field final synthetic val$backCameraMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/sec/android/app/camera/menu/ModeListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$4;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraExecutorManager$4;->val$backCameraMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAnimationComplete()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$4;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/CameraExecutorManager$4$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraExecutorManager$4$1;-><init>(Lcom/sec/android/app/camera/CameraExecutorManager$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
