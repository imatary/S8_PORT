.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3$1;
.super Ljava/lang/Object;
.source "KeyguardCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->onPostExecute(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get18(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3$1;->this$1:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
