.class Lcom/sec/android/app/camera/CameraExecutorManager$8;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraExecutorManager;->showModeShortcutMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraExecutorManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$8;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAnimationComplete()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$8;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraExecutorManager;->mFrontCameraMenu:Lcom/sec/android/app/camera/menu/ModeListMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeShortcutMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$8;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1500(Lcom/sec/android/app/camera/CameraExecutorManager;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$8;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager$8;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/executor/RulePathState;->getStateIDbyName(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraExecutorManager$8;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1100(Lcom/sec/android/app/camera/CameraExecutorManager;ZILjava/lang/String;I)V

    :cond_0
    return-void
.end method
