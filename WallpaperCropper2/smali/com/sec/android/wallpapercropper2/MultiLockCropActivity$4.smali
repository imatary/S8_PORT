.class Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;
.super Landroid/os/AsyncTask;
.source "MultiLockCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->loadThumbnailList()V
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
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get6(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/multilock/ThumbnailInfo;

    invoke-virtual {v0}, Lcom/sec/android/multilock/ThumbnailInfo;->loadThumbnail()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get3(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4$1;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4$1;-><init>(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get2(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get2(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$4;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get2(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method
