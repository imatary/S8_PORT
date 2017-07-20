.class Lcom/android/phone/AnswerMemoRecorderService$1;
.super Landroid/os/Handler;
.source "AnswerMemoRecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnswerMemoRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AnswerMemoRecorderService;


# direct methods
.method constructor <init>(Lcom/android/phone/AnswerMemoRecorderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/AnswerMemoRecorderService$1;->this$0:Lcom/android/phone/AnswerMemoRecorderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$1;->this$0:Lcom/android/phone/AnswerMemoRecorderService;

    const-string/jumbo v1, "INFO_STATE_CHANGED"

    invoke-static {v0, v1}, Lcom/android/phone/AnswerMemoRecorderService;->-wrap0(Lcom/android/phone/AnswerMemoRecorderService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorderService$1;->this$0:Lcom/android/phone/AnswerMemoRecorderService;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/phone/AnswerMemoRecorderService;->-wrap1(Lcom/android/phone/AnswerMemoRecorderService;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
