.class public Lcom/android/phone/PhoneUtilsJpn;
.super Ljava/lang/Object;
.source "PhoneUtilsJpn.java"


# static fields
.field private static mChangeSetting:Z

.field private static mCheckSetting:Z

.field private static mRetryUssd:Ljava/lang/String;

.field static sPatternResponseUSSD:Ljava/util/regex/Pattern;


# direct methods
.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/phone/PhoneUtilsJpn;->mRetryUssd:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "((\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?)?)?)?)?#)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtilsJpn;->sPatternResponseUSSD:Ljava/util/regex/Pattern;

    sput-boolean v1, Lcom/android/phone/PhoneUtilsJpn;->mCheckSetting:Z

    sput-boolean v1, Lcom/android/phone/PhoneUtilsJpn;->mChangeSetting:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/phone/PhoneUtilsJpn;->mRetryUssd:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static displayUSSDInfo(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v1, 0x0

    sget-object v3, Lcom/android/phone/PhoneUtilsJpn;->sPatternResponseUSSD:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-interface {p0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v3, "121"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtilsJpn;->resultVoicemailCode(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v3, "124"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtilsJpn;->resultVoicemailMessageCheckCode(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "127"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtilsJpn;->resultMissedCallNoticeCode(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "148"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtilsJpn;->resultCLIRSettingCode(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "120"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x4

    invoke-interface {p0, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/phone/PhoneUtilsJpn;->resultCallForwardingResponse(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public static isChangeCurrentSetting()Z
    .locals 3

    const-string/jumbo v0, "PhoneUtilsJpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isChangeCurrentSetting : mChangeSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneUtilsJpn;->mChangeSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/phone/PhoneUtilsJpn;->mChangeSetting:Z

    return v0
.end method

.method public static isCheckCurrentSetting()Z
    .locals 3

    const-string/jumbo v0, "PhoneUtilsJpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCheckCurrentSetting : mCheckSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneUtilsJpn;->mCheckSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/phone/PhoneUtilsJpn;->mCheckSetting:Z

    return v0
.end method

.method public static parseUSSD(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v9, 0x0

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getDialString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getUssdCode()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "PhoneUtilsJpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MMI code information - dialString : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "receivedUssd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-static {v2, p0}, Lcom/android/phone/PhoneUtilsJpn;->displayUSSDInfo(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_0
    return-object v9

    :cond_1
    new-instance v5, Lcom/android/phone/PhoneUssdAnalyzer;

    invoke-direct {v5}, Lcom/android/phone/PhoneUssdAnalyzer;-><init>()V

    sget-object v6, Lcom/android/phone/PhoneUtilsJpn;->mRetryUssd:Ljava/lang/String;

    invoke-virtual {v5, v1, v2, v6, p0}, Lcom/android/phone/PhoneUssdAnalyzer;->analyzeUssd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/phone/PhoneUssdAnalyzer;->isRecovery()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/phone/PhoneUssdAnalyzer;->isUserOperation()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "PhoneUtilsJpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ussd ConfMessage  TransmitUssd=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/phone/PhoneUssdAnalyzer;->getRecoveryUssd()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v4, v3, v1}, Lcom/android/phone/PhoneUtilsJpn;->showAlertDialogRetry(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v6, "NoUserOperation"

    return-object v6

    :cond_2
    const-string/jumbo v6, "PhoneUtilsJpn"

    const-string/jumbo v7, "Ussd RetryTransmit"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v6, 0x7f0e0056

    invoke-direct {v0, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v6, 0x0

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    new-instance v6, Lcom/android/phone/PhoneUssdAction;

    invoke-virtual {v5}, Lcom/android/phone/PhoneUssdAnalyzer;->getRecoveryUssd()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/phone/PhoneUssdAction;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneUssdAction;->send(Lcom/android/phone/PhoneGlobals;)V

    const-string/jumbo v6, ""

    sput-object v6, Lcom/android/phone/PhoneUtilsJpn;->mRetryUssd:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "PhoneUtilsJpn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MMI result message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private static resultCLIRSettingCode(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_0

    const v2, 0x7f0d0b09

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v2, 0x7f0d0b0a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private static resultCallForwardingResponse(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Lcom/android/phone/CallForwardingUSSDResponseParser;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallForwardingUSSDResponseParser;-><init>(Ljava/lang/CharSequence;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/phone/CallForwardingUSSDResponseParser;->parseResponseUSSD()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static resultMissedCallNoticeCode(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 10

    const v9, 0x7f0d0b02

    const/16 v8, 0x31

    const/16 v7, 0x30

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v5, :cond_0

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    :cond_1
    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_0
    return-object v0

    :sswitch_0
    const v4, 0x7f0d0aff

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsJpn;->isCheckCurrentSetting()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v4, 0x7f0d0b03

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const v4, 0x7f0d0b03

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const v4, 0x7f0d0b05

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    if-nez v3, :cond_4

    const v4, 0x7f0d0b04

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne v3, v8, :cond_5

    const v4, 0x7f0d0b06

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-ne v3, v7, :cond_2

    const v4, 0x7f0d0b07

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-ne v3, v8, :cond_6

    const v4, 0x7f0d0b06

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-ne v3, v7, :cond_2

    const v4, 0x7f0d0b07

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x36 -> :sswitch_1
        0x37 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static resultVoicemailCode(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 12

    const/4 v0, 0x0

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x2a

    const/16 v10, 0x8

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/16 v9, 0x23

    const/16 v10, 0x8

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v9, 0x4

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x6

    if-le v9, v10, :cond_0

    const/4 v9, 0x6

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/16 v10, 0x8

    if-le v9, v10, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsJpn;->isCheckCurrentSetting()Z

    move-result v9

    if-eqz v9, :cond_3

    if-lez v8, :cond_3

    const/16 v9, 0x8

    invoke-interface {p0, v9, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    const-string/jumbo v9, "PhoneUtilsJpn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resultVoicemailCode : si3_time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-lez v1, :cond_2

    const/16 v9, 0x8

    invoke-interface {p0, v9, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_2
    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-object v0

    :cond_3
    const/16 v9, 0x8

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    goto :goto_0

    :pswitch_1
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const v9, 0x7f0d0aff

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsJpn;->isCheckCurrentSetting()Z

    move-result v9

    if-eqz v9, :cond_4

    if-lez v8, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d0afe

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d0b2a

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d0b2b

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const v9, 0x7f0d0afe

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsJpn;->isCheckCurrentSetting()Z

    move-result v9

    if-eqz v9, :cond_5

    if-lez v8, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d0afc

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d0b2a

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d0b2b

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const v9, 0x7f0d0afc

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_3
    const v9, 0x7f0d0aff

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_4
    const v9, 0x7f0d0b00

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_3
    sparse-switch v4, :sswitch_data_2

    goto/16 :goto_1

    :sswitch_5
    const v9, 0x7f0d0aff

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d0afe

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d0b2a

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d0b2b

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d0afc

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d0b2a

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0d0b2b

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x36 -> :sswitch_1
        0x37 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_3
        0x36 -> :sswitch_4
        0x37 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
    .end sparse-switch
.end method

.method private static resultVoicemailMessageCheckCode(Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    const v2, 0x7f0d0aff

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v2, 0x7f0d0b08

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public static setChangeCurrentSetting(Z)V
    .locals 3

    sput-boolean p0, Lcom/android/phone/PhoneUtilsJpn;->mChangeSetting:Z

    const-string/jumbo v0, "PhoneUtilsJpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChangeCurrentSetting : mChangeSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneUtilsJpn;->mChangeSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setCheckCurrentSetting(Z)V
    .locals 3

    sput-boolean p0, Lcom/android/phone/PhoneUtilsJpn;->mCheckSetting:Z

    const-string/jumbo v0, "PhoneUtilsJpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCheckCurrentSetting : mCheckSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneUtilsJpn;->mCheckSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static showAlertDialogRetry(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "PhoneUtilsJpn"

    const-string/jumbo v2, "showAlertDialogRetry"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e0056

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d032a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/PhoneUtilsJpn$1;

    invoke-direct {v3, p2, p3}, Lcom/android/phone/PhoneUtilsJpn$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0327

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/PhoneUtilsJpn$2;

    invoke-direct {v3}, Lcom/android/phone/PhoneUtilsJpn$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
