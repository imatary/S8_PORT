.class Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;
.super Landroid/os/AsyncTask;
.source "KeyguardCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->loadBitmapSourceWithAsync()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadInBackground()Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get12(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get19(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setCropViewTileSource()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get18(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3$1;

    invoke-direct {v3, p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3$1;-><init>(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x190

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    const-wide/16 v0, 0x64

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-wrap2(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x1f4

    sub-long v0, v4, v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get12(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get19(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$3;->this$0:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->-get17(Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
