.class Lcom/sec/android/app/camera/Camera$16;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onRecordingStopped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$16;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VIDEO_PREVIEW:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V

    :cond_0
    return-void
.end method
