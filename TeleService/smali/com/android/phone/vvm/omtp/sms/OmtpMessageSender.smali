.class public abstract Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
.super Ljava/lang/Object;
.source "OmtpMessageSender.java"


# instance fields
.field protected mApplicationPort:S

.field protected mDestinationNumber:Ljava/lang/String;

.field protected mSmsManager:Landroid/telephony/SmsManager;


# direct methods
.method public constructor <init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mSmsManager:Landroid/telephony/SmsManager;

    iput-short p2, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mApplicationPort:S

    iput-object p3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method protected sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-short v0, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mApplicationPort:S

    if-nez v0, :cond_0

    const-string/jumbo v0, "OmtpMessageSender"

    const-string/jumbo v1, "Sending TEXT sms \'%s\' to %s"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object p1, v3, v6

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    aput-object v5, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mSmsManager:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v7, :cond_1

    const-string/jumbo v0, "OmtpMessageSender"

    const-string/jumbo v1, "country is null."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to encode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "OmtpMessageSender"

    const-string/jumbo v1, "Sending BINARY sms \'%s\' to %s:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    iget-object v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    aput-object v5, v3, v9

    iget-short v5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mApplicationPort:S

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mSmsManager:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mDestinationNumber:Ljava/lang/String;

    iget-short v3, p0, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->mApplicationPort:S

    move-object v5, p2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
