.class Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;
.super Ljava/lang/Object;
.source "VirtualShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/VirtualShot;->onInteractiveDirectionWarning(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

.field final synthetic val$warn_state:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/VirtualShot;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->val$warn_state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->val$warn_state:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$700(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const v1, 0x7f0901ad

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$800(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$200(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    const v1, 0x7f0901af

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VirtualShot$3;->this$0:Lcom/sec/android/app/camera/shootingmode/VirtualShot;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VirtualShot;->access$900(Lcom/sec/android/app/camera/shootingmode/VirtualShot;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
