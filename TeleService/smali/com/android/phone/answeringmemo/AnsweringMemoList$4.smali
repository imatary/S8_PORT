.class Lcom/android/phone/answeringmemo/AnsweringMemoList$4;
.super Ljava/lang/Object;
.source "AnsweringMemoList.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoList;->showPlaybackLayout(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ListView;Landroid/view/View;II)V
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

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    const-string/jumbo v0, "AnsweringMemoList"

    const-string/jumbo v1, "- Playing completed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v2, v2, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-wrap0(Lcom/android/phone/answeringmemo/AnsweringMemoList;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playIcon:Landroid/widget/ImageButton;

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get0(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get0(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$4;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v1}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get1(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method
