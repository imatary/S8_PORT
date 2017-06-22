.class Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;
.super Landroid/os/AsyncTask;
.source "SdlMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaRecorderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

.field public mMaxDuration:I

.field final synthetic this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;


# direct methods
.method constructor <init>(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    iget-object v2, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mResultFilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$000(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->prepareRecording(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # invokes: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->startImpl()Z
    invoke-static {v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$100(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # invokes: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOnInfoListener()V
    invoke-static {v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$200(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # invokes: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->setOnErrorListener()V
    invoke-static {v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$300(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-virtual {v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->reset()V

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-virtual {v1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->release()V

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorder:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->mSecMediaRecorderClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # invokes: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$400(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # invokes: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$400(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # invokes: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$400(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    # invokes: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$400(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_4
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    # invokes: Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->printLog(Ljava/lang/Throwable;)V
    invoke-static {v1, v2}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;->access$400(Lcom/samsung/android/spen/libsdl/SdlMediaRecorder;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->doInBackground([Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onError()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onStarted()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libsdl/SdlMediaRecorder$MediaRecorderAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
