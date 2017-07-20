.class Lcom/android/phone/answeringmemo/AnsweringMemoList$2;
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

.field final synthetic val$play_layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iput-object p2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->val$play_layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-static {v5}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-set1(I)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iput-object v1, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get0(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get0(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v1}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get1(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iput v4, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->playingId:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v5

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iput v4, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->isVisible:I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$2;->val$play_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
