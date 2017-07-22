.class final Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AnsweringMemoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;


# direct methods
.method public constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get2(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get2(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get2(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$BackgroundQueryHandler;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v1, v1, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playingId:[J

    invoke-virtual {v0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoListAdapter;->setCurrentPlayingId([J)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
