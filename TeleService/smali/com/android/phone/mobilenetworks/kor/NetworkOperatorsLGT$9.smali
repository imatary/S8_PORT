.class Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;
.super Landroid/os/Handler;
.source "NetworkOperatorsLGT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "total"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    iget-object v1, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    iget-object v1, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get4(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get4(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v1

    int-to-double v2, v0

    const-wide/16 v4, 0x708

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->setPercent(DJ)V

    :cond_1
    if-gtz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$9;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    iget-object v1, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    invoke-virtual {v1, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;->setState(I)V

    const/4 v0, 0x0

    :cond_2
    return-void
.end method
