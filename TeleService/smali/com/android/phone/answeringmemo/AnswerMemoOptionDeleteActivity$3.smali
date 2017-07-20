.class Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$3;
.super Ljava/lang/Object;
.source "AnswerMemoOptionDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$3;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$3;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get6(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$3;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get2(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$3;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get2(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$3;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-wrap3(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)V

    return-void
.end method
