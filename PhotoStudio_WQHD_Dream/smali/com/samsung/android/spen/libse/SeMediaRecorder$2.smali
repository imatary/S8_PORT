.class Lcom/samsung/android/spen/libse/SeMediaRecorder$2;
.super Ljava/lang/Object;
.source "SeMediaRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spen/libse/SeMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;


# direct methods
.method constructor <init>(Lcom/samsung/android/spen/libse/SeMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$2;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$2;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    invoke-static {v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$400(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$2;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    invoke-static {v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$400(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;->onError(II)V

    :cond_0
    return-void
.end method
