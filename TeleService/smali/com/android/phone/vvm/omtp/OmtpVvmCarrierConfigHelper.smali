.class public Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;
.super Ljava/lang/Object;
.source "OmtpVvmCarrierConfigHelper.java"


# instance fields
.field private mCarrierConfig:Landroid/os/PersistableBundle;

.field private mContext:Landroid/content/Context;

.field private mSubId:I

.field private mVvmType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {p0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getVvmType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    const-string/jumbo v0, "OmtpVvmCarrierConfigHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCarrierConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mVvmType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCarrierConfig()Landroid/os/PersistableBundle;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "OmtpVvmCarrierConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrierConfig mSubId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "OmtpVvmCarrierConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCarrierConfig SubscriptionManager.isValidSubscriptionId(mSubId) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "OmtpVvmCarrierConfigHelper"

    const-string/jumbo v2, "Invalid subscriptionId or subscriptionId not provided in intent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    iget-object v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const-string/jumbo v1, "OmtpVvmCarrierConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "carrierConfigManager : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string/jumbo v1, "OmtpVvmCarrierConfigHelper"

    const-string/jumbo v2, "No carrier config service found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    iget v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method private getMessageSender()Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;
    .locals 10

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v2, :cond_0

    const-string/jumbo v2, "OmtpVvmCarrierConfigHelper"

    const-string/jumbo v5, "Empty carrier config."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string/jumbo v5, "vvm_port_number_int"

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string/jumbo v5, "vvm_destination_number_string"

    invoke-virtual {v2, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OmtpVvmCarrierConfigHelper"

    const-string/jumbo v5, "No destination number for this carrier."

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "ro.build.version.release"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Samsung."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "ro.product.model"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "."

    const-string/jumbo v9, ""

    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    const-string/jumbo v5, "vvm_type_omtp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;

    int-to-short v2, v8

    const-string/jumbo v5, "11"

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/vvm/omtp/sms/OmtpStandardMessageSender;-><init>(Landroid/telephony/SmsManager;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v5, "vvm_type_cvvm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;

    int-to-short v2, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/vvm/omtp/sms/OmtpCvvmMessageSender;-><init>(Landroid/telephony/SmsManager;SLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "OmtpVvmCarrierConfigHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected visual voicemail type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCarrierVvmPackageName()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_vvm_package_name_string"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVvmType()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    const-string/jumbo v0, "OmtpVvmCarrierConfigHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVvmType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string/jumbo v3, "vvm_type_string"

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_type_string"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabledByDefault()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string/jumbo v3, "carrier_vvm_package_name_string"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v5

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "OmtpVvmCarrierConfigHelper"

    const-string/jumbo v3, "isEnabledByDefault NameNotFoundException!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public isOmtpVvmType()Z
    .locals 2

    const-string/jumbo v0, "vvm_type_omtp"

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "vvm_type_cvvm"

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mVvmType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startActivation()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getMessageSender()Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "OmtpVvmCarrierConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requesting VVM activation for subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->requestVvmActivation(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public startDeactivation()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->getMessageSender()Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "OmtpVvmCarrierConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requesting VVM deactivation for subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/vvm/omtp/OmtpVvmCarrierConfigHelper;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v4}, Lcom/android/phone/vvm/omtp/sms/OmtpMessageSender;->requestVvmDeactivation(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
