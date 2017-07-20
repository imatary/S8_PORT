.class public Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;
.super Ljava/lang/Object;
.source "TPhoneVoicerecorder.java"

# interfaces
.implements Lcom/android/phone/phonevoicerecorder/IMessageCallBack;


# instance fields
.field mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

.field mTPhoneSrv:Lcom/android/phone/TPhoneService;


# direct methods
.method public constructor <init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mTPhoneSrv:Lcom/android/phone/TPhoneService;

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    return-void
.end method


# virtual methods
.method public sendRecorderStateChanged(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mTPhoneSrv:Lcom/android/phone/TPhoneService;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/TPhoneService;->sendRecordStateChanged(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStartRecordFailed()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "resultCode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStartRecordFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->sendRecorderStateChanged(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStartRecordSucceed()V
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStartRecordSucceed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->sendRecorderStateChanged(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStopRecordFailed()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "resultCode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStopRecordFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->sendRecorderStateChanged(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendStopRecordSucceed(Ljava/lang/String;J)V
    .locals 6

    const/4 v4, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "duration"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "resultCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendStopRecordSucceed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->sendRecorderStateChanged(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/TPhoneVoicerecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->showStopRecordSucceed()V

    return-void
.end method
