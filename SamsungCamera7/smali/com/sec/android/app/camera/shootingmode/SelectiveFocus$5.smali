.class Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$5;
.super Ljava/lang/Object;
.source "SelectiveFocus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->onSelectiveFocusComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$5;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$5;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$5;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$200(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v2, 0x7f0901a2

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$502(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus$5;->this$0:Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;->access$500(Lcom/sec/android/app/camera/shootingmode/SelectiveFocus;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
