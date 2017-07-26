.class Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;
.super Landroid/telephony/PhoneStateListener;
.source "AnsweringMemoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/answeringmemo/AnsweringMemoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TeleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;


# direct methods
.method constructor <init>(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "AnsweringMemoList"

    const-string/jumbo v1, "device in call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget-object v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iput-object v3, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->mp:Landroid/media/MediaPlayer;

    invoke-static {v2}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-set0(I)I

    :cond_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    iget v0, v0, Lcom/android/phone/answeringmemo/AnsweringMemoList;->current:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoList$TeleListener;->this$0:Lcom/android/phone/answeringmemo/AnsweringMemoList;

    invoke-static {v0}, Lcom/android/phone/answeringmemo/AnsweringMemoList;->-wrap1(Lcom/android/phone/answeringmemo/AnsweringMemoList;)V

    :cond_1
    return-void
.end method
