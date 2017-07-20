.class Lcom/android/phone/answeringmemo/AnsweringMemoList$8;
.super Ljava/lang/Object;
.source "AnsweringMemoList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoList;->seekUpdation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v1, v1, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v1, v1, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v1, v1, Lcom/android/phone/answeringmemo/AnsweringMemoList;->status:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-wrap0(Lcom/android/phone/answeringmemo/AnsweringMemoList;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v1}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get3(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$8;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v1}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get4(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
