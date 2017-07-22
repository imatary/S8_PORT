.class public Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;
.super Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
.source "OmtpStandardMessageSender.java"


# instance fields
.field private final mClientPrefix:Ljava/lang/String;

.field private final mClientType:Ljava/lang/String;

.field private final mProtocolVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/telephony/SmsManager;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;-><init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V

    iput-object p4, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mClientType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mClientPrefix:Ljava/lang/String;

    return-void
.end method

.method private appendApplicationPort(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pt"

    iget-short v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mApplicationPort:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private appendClientPrefix(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mClientPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pv"

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ct"

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mClientType:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendField(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public requestVvmActivation(Landroid/app/PendingIntent;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    const-string/jumbo v2, "12"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->mProtocolVersion:Ljava/lang/String;

    const-string/jumbo v2, "13"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendApplicationPort(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendClientPrefix(Ljava/lang/StringBuilder;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestVvmDeactivation(Landroid/app/PendingIntent;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Deactivate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->appendProtocolVersionAndClientType(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;->sendSms(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method
