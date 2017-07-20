.class public Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;
.super Ljava/lang/Object;
.source "OmtpSmsParser.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "OmtpSmsParser"

    sput-object v0, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    sget-object v2, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse sms prefix VVM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string/jumbo v2, "//VVM:SYNC:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;

    const-string/jumbo v2, "//VVM:SYNC:"

    const-string/jumbo v3, "//VVM:SYNC:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->parseSmsBody(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v2, "ev"

    invoke-virtual {v0, v2}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v2, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Missing mandatory field: ev"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    const-string/jumbo v2, "//VVM:STATUS:"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;

    const-string/jumbo v2, "//VVM:STATUS:"

    const-string/jumbo v3, "//VVM:STATUS:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/vvm/omtp/sms/OmtpSmsParser;->parseSmsBody(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-object v0
.end method

.method private static parseSmsBody(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v4, ";"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    const-string/jumbo v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    aget-object v7, v2, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v3
.end method
