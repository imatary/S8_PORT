.class Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;
.super Landroid/os/AsyncTask;
.source "SeMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spen/libse/SeMediaRecorder;
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

.field final synthetic this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;


# direct methods
.method constructor <init>(Lcom/samsung/android/spen/libse/SeMediaRecorder;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libse/SeMediaRecorder;->mResultFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$000(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mMaxDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->prepareRecording(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    # invokes: Lcom/samsung/android/spen/libse/SeMediaRecorder;->startImpl()Z
    invoke-static {v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$100(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    iget-object v0, v0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libse/SeMediaRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;
    invoke-static {v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$200(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Landroid/media/MediaRecorder$OnInfoListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    iget-object v0, v0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libse/SeMediaRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;
    invoke-static {v1}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$300(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Landroid/media/MediaRecorder$OnErrorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->reset()V

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->release()V

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/spen/libse/SeMediaRecorder;->mSepMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->doInBackground([Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;)Ljava/lang/Boolean;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onError()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;

    invoke-interface {v0}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$MediaRecorderListener;->onStarted()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/spen/libse/SeMediaRecorder$MediaRecorderAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
