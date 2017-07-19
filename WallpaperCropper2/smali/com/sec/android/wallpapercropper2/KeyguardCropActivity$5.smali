.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;
.super Landroid/os/AsyncTask;
.source "KeyguardCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadCropViewTileSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    new-instance v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5$1;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5$1;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setCurrentDate()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get3(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get7(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get3(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get7(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get9(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getCurrentDualModeView()Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v0

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get4(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getCurrentDualModeView()Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v0

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get5(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get4(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$5;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get5(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
