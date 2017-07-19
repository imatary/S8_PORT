.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadBitmapSourceWithAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get12(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get15(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get15(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    const v2, 0x7f060022

    invoke-virtual {v1, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$2;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->finish()V

    :cond_0
    return-void
.end method
