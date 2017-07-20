.class Lcom/android/phone/answeringmemo/AnsweringMemoList$7;
.super Ljava/lang/Object;
.source "AnsweringMemoList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$7;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$7;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$7;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$7;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playIcon:Landroid/widget/ImageButton;

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$7;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$7;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playIcon:Landroid/widget/ImageButton;

    const v1, 0x7f020141

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$7;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method
