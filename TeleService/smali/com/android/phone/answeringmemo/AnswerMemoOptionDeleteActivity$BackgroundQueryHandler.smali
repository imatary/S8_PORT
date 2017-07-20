.class final Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AnswerMemoOptionDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get0(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->setCheckedIdArrayList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get6(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get0(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;

    invoke-static {v3}, Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;->-get1(Lcom/android/phone/answeringmemo/AnswerMemoOptionDeleteActivity;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
