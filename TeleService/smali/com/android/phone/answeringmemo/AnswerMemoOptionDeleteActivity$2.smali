.class Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;
.super Landroid/os/Handler;
.source "AnswerMemoOptionDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-set2(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-virtual {v1}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0ccd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2$1;-><init>(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-wrap0(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-wrap0(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    const v1, 0x7f0d0cc4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-set2(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-virtual {v1}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0ccd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$2;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get4(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
