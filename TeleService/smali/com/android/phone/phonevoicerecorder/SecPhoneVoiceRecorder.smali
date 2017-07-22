.class public Lcom/android/phone/phonevoicerecorder/SecPhoneVoiceRecorder;
.super Ljava/lang/Object;
.source "SecPhoneVoiceRecorder.java"

# interfaces
.implements Lcom/android/phone/phonevoicerecorder/IMessageCallBack;


# instance fields
.field mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;


# direct methods
.method public constructor <init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/SecPhoneVoiceRecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    return-void
.end method


# virtual methods
.method public sendStartRecordFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/SecPhoneVoiceRecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendCallBackMessage(I)V

    return-void
.end method

.method public sendStartRecordSucceed()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/SecPhoneVoiceRecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendCallBackMessage(I)V

    return-void
.end method

.method public sendStopRecordFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/SecPhoneVoiceRecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendCallBackMessage(I)V

    return-void
.end method

.method public sendStopRecordSucceed(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/SecPhoneVoiceRecorder;->mRecorder:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendCallBackMessage(I)V

    return-void
.end method
