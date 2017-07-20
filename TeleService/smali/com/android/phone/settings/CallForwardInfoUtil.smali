.class public Lcom/android/phone/settings/CallForwardInfoUtil;
.super Ljava/lang/Object;
.source "CallForwardInfoUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/settings/CallForwardInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CallForwardInfoUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/phone/settings/CallForwardInfoUtil;->isServiceClassVoice(Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v1, p0, v0

    :cond_0
    if-nez v1, :cond_3

    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    iput v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput p1, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/android/phone/settings/CallForwardInfoUtil;->hasForwardingNumber(Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    iput v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    goto :goto_1
.end method

.method private static hasForwardingNumber(Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v2, p1, :cond_1

    aget-object v2, p0, v0

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private static isServiceClassVoice(Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    iget v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public static setCallForwardingOption(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x3

    :goto_0
    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
