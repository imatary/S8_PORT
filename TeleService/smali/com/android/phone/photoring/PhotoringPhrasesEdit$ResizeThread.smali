.class Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;
.super Ljava/lang/Thread;
.source "PhotoringPhrasesEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoringPhrasesEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizeThread"
.end annotation


# instance fields
.field mhandler:Landroid/os/Handler;

.field resizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

.field videoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;


# direct methods
.method private constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Lcom/samsung/android/media/codec/SemVideoTranscoder;Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->videoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    iput-object p3, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    iput-object p4, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->mhandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Lcom/samsung/android/media/codec/SemVideoTranscoder;Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;Landroid/os/Handler;Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit;Lcom/samsung/android/media/codec/SemVideoTranscoder;Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->videoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->videoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-virtual {v0}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->stop()V

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->videoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    :cond_1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->videoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    new-instance v2, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread$1;

    invoke-direct {v2, p0}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread$1;-><init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->setProgressEventListener(Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->videoTranscoder:Lcom/samsung/android/media/codec/SemVideoTranscoder;

    invoke-virtual {v1}, Lcom/samsung/android/media/codec/SemVideoTranscoder;->encode()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhotoringPhrasesEdit"

    const-string/jumbo v2, "resizing Video error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-get2(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-get2(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->this$0:Lcom/android/phone/photoring/PhotoringPhrasesEdit;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringPhrasesEdit;->-get2(Lcom/android/phone/photoring/PhotoringPhrasesEdit;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0
.end method
