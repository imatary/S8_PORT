.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;
.super Landroid/os/AsyncTask;
.source "MotionPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadingTask"
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
.field onAsyncTaskCallback:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->onAsyncTaskCallback:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->onAsyncTaskCallback:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->onAsyncTaskCallback:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;->doInBackground()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->onAsyncTaskCallback:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;->onPostExecute()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$loadingTask;->onAsyncTaskCallback:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$OnAsyncTaskCallback;->onPreExecute()V

    return-void
.end method
