.class Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2$1;
.super Ljava/lang/Object;
.source "AnswerMemoOptionDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2$1;->this$1:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-static {}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get3()Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$FileOperationThread;->interrupt()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2$1;->this$1:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get5(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
