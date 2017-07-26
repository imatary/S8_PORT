.class Lcom/android/phone/answeringmemo/AnsweringMemoList$6;
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

.field final synthetic val$speaker:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;Landroid/widget/ImageButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iput-object p2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$6;->val$speaker:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get5()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get0(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-set0(I)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$6;->val$speaker:Landroid/widget/ImageButton;

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-set0(I)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$6;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-get0(Lcom/android/phone/answeringmemo/AnsweringMemoList;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$6;->val$speaker:Landroid/widget/ImageButton;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
