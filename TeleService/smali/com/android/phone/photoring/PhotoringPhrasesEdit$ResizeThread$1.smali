.class Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread$1;
.super Ljava/lang/Object;
.source "PhotoringPhrasesEdit.java"

# interfaces
.implements Lcom/samsung/android/media/codec/SemVideoTranscoder$ProgressEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread$1;->this$1:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "PhotoringPhrasesEdit"

    const-string/jumbo v1, "completed video resize"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread$1;->this$1:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->resizeProgress:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;

    invoke-virtual {v0, v2}, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeProgress;->cancel(Z)Z

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread$1;->this$1:Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;

    iget-object v0, v0, Lcom/android/phone/photoring/PhotoringPhrasesEdit$ResizeThread;->mhandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStarted()V
    .locals 2

    const-string/jumbo v0, "PhotoringPhrasesEdit"

    const-string/jumbo v1, "Start video resizing"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
