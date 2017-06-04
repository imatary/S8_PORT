.class Lcom/sec/android/app/camera/shootingmode/Selfie$5;
.super Ljava/lang/Object;
.source "Selfie.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$100(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v2, 0x7f090233

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$1202(Lcom/sec/android/app/camera/shootingmode/Selfie;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$1200(Lcom/sec/android/app/camera/shootingmode/Selfie;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    # getter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$1200(Lcom/sec/android/app/camera/shootingmode/Selfie;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$5;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerToast:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$1302(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)Z

    :cond_0
    return-void
.end method
