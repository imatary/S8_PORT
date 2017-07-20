.class public Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;
.super Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
.source "OmtpCvvmMessageSender.java"


# direct methods
.method public constructor <init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;-><init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V

    return-void
.end method

.method private sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4

    const-string/jumbo v1, "OmtpCvvmMessageSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCvvmMessage request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportDeviceReporting"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dt"

    const-string/jumbo v2, "6"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    const-string/jumbo v1, "OmtpCvvmMessageSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sb dt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 1

    const-string/jumbo v0, "Activate"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;->sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 1

    const-string/jumbo v0, "Deactivate"

    invoke-direct {p0, v0, p1}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;->sendCvvmMessage(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
