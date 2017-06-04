.class Lcom/sec/android/app/camera/Camera$13$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/OverlayHelpController$OverlayHelpHideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$13;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$13;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$13$1;->this$1:Lcom/sec/android/app/camera/Camera$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverlayHelpHide()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$13$1;->this$1:Lcom/sec/android/app/camera/Camera$13;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$13;->this$0:Lcom/sec/android/app/camera/Camera;

    # invokes: Lcom/sec/android/app/camera/Camera;->showLocationTagDialog()V
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$2500(Lcom/sec/android/app/camera/Camera;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$13$1;->this$1:Lcom/sec/android/app/camera/Camera$13;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$13;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCameraDialogVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$13$1;->this$1:Lcom/sec/android/app/camera/Camera$13;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$13;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showVisionIntelligenceEffect()V

    :cond_0
    return-void
.end method
