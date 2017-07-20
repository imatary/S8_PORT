.class Lcom/android/phone/answeringmemo/AnsweringMemoList$3;
.super Ljava/lang/Object;
.source "AnsweringMemoList.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$3;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$3;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
