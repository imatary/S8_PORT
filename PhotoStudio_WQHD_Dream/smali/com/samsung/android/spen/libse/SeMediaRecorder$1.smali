.class Lcom/samsung/android/spen/libse/SeMediaRecorder$1;
.super Ljava/lang/Object;
.source "SeMediaRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


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

    iput-object p1, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    invoke-static {v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$400(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libse/SeMediaRecorder;->mListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;
    invoke-static {v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$400(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$ActionListener;->onInfo(II)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/spen/libse/SeMediaRecorder$1;->this$0:Lcom/samsung/android/spen/libse/SeMediaRecorder;

    # getter for: Lcom/samsung/android/spen/libse/SeMediaRecorder;->mTimeListener:Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;
    invoke-static {v0}, Lcom/samsung/android/spen/libse/SeMediaRecorder;->access$500(Lcom/samsung/android/spen/libse/SeMediaRecorder;)Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;

    move-result-object v0

    div-int/lit16 v1, p3, 0x3e8

    invoke-interface {v0, v1}, Lcom/samsung/android/spen/libinterface/MediaRecorderInterface$TimeListener;->onUpdateTime(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method
