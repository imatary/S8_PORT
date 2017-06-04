.class Lcom/sec/android/app/camera/shootingmode/Auto$4;
.super Ljava/lang/Object;
.source "Auto.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Auto;->onQRErrorToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Auto;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto$4;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$4;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$800(Lcom/sec/android/app/camera/shootingmode/Auto;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$4;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Auto;->mErrorToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$800(Lcom/sec/android/app/camera/shootingmode/Auto;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
