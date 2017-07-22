.class Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$1;
.super Ljava/lang/Object;
.source "AnswerMemoOptionDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$1;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$1;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-set1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;Z)Z

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$1;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-wrap1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$1;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-set0(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
