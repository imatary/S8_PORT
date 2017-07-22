.class Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;
.super Ljava/lang/Thread;
.source "PstnCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/cdma/PstnCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalInfoTonePlayer"
.end annotation


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/cdma/PstnCallNotifier;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p2, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->mToneId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "PstnCallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SignalInfoTonePlayer.run(toneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    invoke-static {v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->-wrap0(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    invoke-static {v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->-get0(Lcom/android/services/telephony/cdma/PstnCallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    invoke-static {v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->-get0(Lcom/android/services/telephony/cdma/PstnCallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->this$0:Lcom/android/services/telephony/cdma/PstnCallNotifier;

    invoke-static {v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->-get0(Lcom/android/services/telephony/cdma/PstnCallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->mToneId:I

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    :cond_0
    return-void
.end method
