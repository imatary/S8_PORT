.class public Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;
.super Ljava/lang/Object;
.source "NetworkModeResourceLoader.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mActivePhoneId:I

.field private mCaptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NetworkModeResourceLoader"

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mCaptionList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mValueList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addItemToPreference(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->clearItems()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mCaptionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mCaptionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mValueList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getLTEsummary()[Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "cust_network_sel_menu4_numeric"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "cust_network_sel_menu4_character"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "network_mode_list_chn_type"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "sim2_2g_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLTESupportSim(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isWcdmaLimitationSimInSlaveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "network_mode_list_hktw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 5"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_5
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 4"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_6
    const-string/jumbo v2, "cust_network_sel_menu4_atl_lte"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 6"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_7
    const-string/jumbo v2, "cust_network_sel_menu4_o2"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 7"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_8
    const-string/jumbo v2, "cust_network_sel_menu4_orange"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_9
    const-string/jumbo v2, "cust_network_sel_menu4_sfr"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 9"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_a
    const-string/jumbo v2, "cust_network_sel_menu4_vodafone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 10"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_b
    const-string/jumbo v2, "network_mode_list_tmo"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: NETWORK_MODE_LIST_TMO"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_c
    const-string/jumbo v2, "network_mode_list_dcm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 12"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_d
    const-string/jumbo v2, "network_mode_list_jpn_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 13"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_e
    const-string/jumbo v2, "remove_network_mode_gsm_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->shouldRemoveGSMOnlyForLTN()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_f
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 14"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_10

    const v2, 0x7f090062

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_10
    if-eqz v0, :cond_11

    const v2, 0x7f090063

    goto :goto_0

    :cond_11
    const v2, 0x7f090061

    goto :goto_0

    :cond_12
    const-string/jumbo v2, "remove_network_mode_gsm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 15"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_13

    const v2, 0x7f09004f

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_13
    if-eqz v0, :cond_14

    const v2, 0x7f090050

    goto :goto_1

    :cond_14
    const v2, 0x7f09004e

    goto :goto_1

    :cond_15
    const-string/jumbo v2, "remove_network_mode_wcdma_gsm_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 16"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_16

    const v2, 0x7f09005e

    :goto_2
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_16
    if-eqz v0, :cond_17

    const v2, 0x7f09005f

    goto :goto_2

    :cond_17
    const v2, 0x7f09005d

    goto :goto_2

    :cond_18
    const-string/jumbo v2, "remove_network_mode_wcdma_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 17"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_19

    const v2, 0x7f090066

    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_19
    if-eqz v0, :cond_1a

    const v2, 0x7f090067

    goto :goto_3

    :cond_1a
    const v2, 0x7f090065

    goto :goto_3

    :cond_1b
    const-string/jumbo v2, "remove_network_mode_lte"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 18"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_1c

    const v2, 0x7f09003e

    :goto_4
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1c
    const v2, 0x7f09003d

    goto :goto_4

    :cond_1d
    const-string/jumbo v2, "cust_network_sel_menu4_add_ltewcdma"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: ADD_NETWORK_MODE_LTEWCDMA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v1, :cond_1e

    const v2, 0x7f09006c

    :goto_5
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1e
    const v2, 0x7f09006b

    goto :goto_5

    :cond_1f
    const-string/jumbo v2, "cust_network_sel_menu4_numeric"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string/jumbo v2, "networkmode_in_can"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_20
    const-string/jumbo v2, "cust_network_sel_menu4_lteonly"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/TelephonyConfig;->isRjioSIM(I)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_21
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 20"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_22
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 19"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_23
    const-string/jumbo v2, "use_simple_network_word"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary: 21"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_24
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getLTEsummary..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSummaryList()[Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "network_mode_list_lte"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->getLTEsummary()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->get3Gsummary()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadGlobalNetworkList()V
    .locals 4

    const-string/jumbo v1, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGlobalNetworkList: 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0900e0

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f0900e1

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "network_mode_cdma_lte"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGlobalNetworkList: 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0900dc

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f0900dd

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "network_mode_global_lte_wcdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGlobalNetworkList: 3-1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0900ec

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f0900ed

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "network_mode_global_lte_cdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGlobalNetworkList: 3-2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0900ee

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f0900ef

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0900ea

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportTdscdma()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGlobalNetworkList: 4-1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0900e9

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGlobalNetworkList: 4-2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0900eb

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "network_mode_global_lte_gsm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGlobalNetworkList: 5"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0900e6

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f0900e7

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGlobalNetworkList: 6"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0900de

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f0900df

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGlobalNetworkList..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_network_mode_pst_vzw"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferredNetworkModePstVzw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const v1, 0x7f0900e2

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f0900e3

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_8
    const v1, 0x7f0900e4

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f0900e5

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0
.end method

.method private loadGsmWcdmaNetworkList()V
    .locals 3

    const-string/jumbo v1, "cust_network_sel_menu4_numeric"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "remove_network_mode_gsm_only"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->shouldRemoveGSMOnlyForLTN()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGsmWcdmaNetworkList: 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const v1, 0x7f09004c

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f09004d

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    :goto_1
    return-void

    :cond_1
    const v1, 0x7f09004b

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "remove_network_mode_wcdma_gsm_only"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGsmWcdmaNetworkList: 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const v1, 0x7f090046

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f090047

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_1

    :cond_3
    const v1, 0x7f090045

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "remove_network_mode_wcdma_only"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGsmWcdmaNetworkList: 3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    const v1, 0x7f090049

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f09004a

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_1

    :cond_5
    const v1, 0x7f090048

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "cust_network_sel_menu4_o2"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGsmWcdmaNetworkList: 4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f09008d

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f09008e

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "cust_network_sel_menu4_orange"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGsmWcdmaNetworkList: 5"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f09007a

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f09007b

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v1, "cust_network_sel_menu4_sfr"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGsmWcdmaNetworkList: 6"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f09007c

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f09007d

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v1, "cust_network_sel_menu4_vodafone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGsmWcdmaNetworkList: 7"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f090082

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f090083

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v1, "cust_network_sel_menu4_numeric"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "networkmode_in_can"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGsmWcdmaNetworkList..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f09003d

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f09003f

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadGsmWcdmaNetworkList: 8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f09007e

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v1, 0x7f09007f

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_1
.end method

.method private loadListFromResources(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadListFromResources: type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->loadGlobalNetworkList()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->loadLteNetworkList()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->loadGsmWcdmaNetworkList()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadLteNetworkList()V
    .locals 5

    const-string/jumbo v2, "cust_network_sel_menu4_numeric"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "cust_network_sel_menu4_character"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "network_mode_list_chn_type"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadLteNetworkList: mActivePhoneId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sim2_2g_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLTESupportSim(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090043

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090044

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isWcdmaLimitationSimInSlaveSlot(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090078

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090079

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090049

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f09004a

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "network_mode_list_hktw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 5"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090076

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090077

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 4"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090074

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090075

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "cust_network_sel_menu4_atl_lte"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 6"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090084

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090085

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "cust_network_sel_menu4_o2"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 7"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f09008b

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f09008c

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "cust_network_sel_menu4_orange"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 8"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f09006e

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f09006f

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "cust_network_sel_menu4_sfr"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 9"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090070

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090071

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "cust_network_sel_menu4_vodafone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 10"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090080

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090081

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "network_mode_list_tmo"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: NETWORK_MODE_LIST_TMO"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090086

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090087

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "network_mode_list_dcm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 12"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090055

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090056

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "network_mode_list_jpn_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 13"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090057

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090058

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "remove_network_mode_gsm_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->shouldRemoveGSMOnlyForLTN()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_f
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 14"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_11

    const v2, 0x7f090062

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    if-eqz v0, :cond_10

    const v2, 0x7f090063

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    :cond_10
    const v2, 0x7f090064

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_11
    const v2, 0x7f090061

    goto :goto_1

    :cond_12
    const-string/jumbo v2, "remove_network_mode_gsm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 15"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_14

    const v2, 0x7f09004f

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    if-eqz v0, :cond_13

    const v2, 0x7f090050

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    :cond_13
    const v2, 0x7f090051

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_14
    const v2, 0x7f09004e

    goto :goto_2

    :cond_15
    const-string/jumbo v2, "remove_network_mode_wcdma_gsm_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 16"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_17

    const v2, 0x7f09005e

    :goto_3
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    if-eqz v0, :cond_16

    const v2, 0x7f09005f

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    :cond_16
    const v2, 0x7f090060

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_17
    const v2, 0x7f09005d

    goto :goto_3

    :cond_18
    const-string/jumbo v2, "remove_network_mode_wcdma_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 17"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1a

    const v2, 0x7f090066

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    if-eqz v0, :cond_19

    const v2, 0x7f090067

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    :cond_19
    const v2, 0x7f090068

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_1a
    const v2, 0x7f090065

    goto :goto_4

    :cond_1b
    const-string/jumbo v2, "remove_network_mode_lte"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 18"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1c

    const v2, 0x7f09003e

    :goto_5
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f09003f

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_1c
    const v2, 0x7f09003d

    goto :goto_5

    :cond_1d
    const-string/jumbo v2, "cust_network_sel_menu4_add_ltewcdma"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: ADD_NETWORK_MODE_LTEWCDMA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1e

    const v2, 0x7f09006c

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f09006d

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_1e
    const v2, 0x7f09006b

    goto :goto_6

    :cond_1f
    const-string/jumbo v2, "cust_network_sel_menu4_numeric"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string/jumbo v2, "networkmode_in_can"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_20
    const-string/jumbo v2, "cust_network_sel_menu4_lteonly"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    iget v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-static {v2}, Lcom/android/phone/TelephonyConfig;->isRjioSIM(I)Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_21
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 20"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090069

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f09006a

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_22
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 19"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090072

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f090073

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_23
    const-string/jumbo v2, "use_simple_network_word"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList: 21"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f09005b

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f09005c

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0

    :cond_24
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "loadLteNetworkList..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f090059

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setCaptionList(I)V

    const v2, 0x7f09005a

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->setValueList(I)V

    goto/16 :goto_0
.end method

.method private setCaptionList(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mCaptionList:Ljava/util/List;

    return-void
.end method

.method private setValueList(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mValueList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public fetch(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->loadListFromResources(I)V

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->addItemToPreference(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;)V

    return-void
.end method

.method public fetch(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mActivePhoneId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->fetch(Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;I)V

    return-void
.end method

.method public get3Gsummary()[Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "cust_network_sel_menu4_numeric"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "remove_network_mode_gsm_only"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->shouldRemoveGSMOnlyForLTN()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "get3Gsummary: 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    const v1, 0x7f09004c

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const v1, 0x7f09004b

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "remove_network_mode_wcdma_gsm_only"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "get3Gsummary: 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_3

    const v1, 0x7f090046

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const v1, 0x7f090045

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "remove_network_mode_wcdma_only"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "get3Gsummary: 3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_5

    const v1, 0x7f090049

    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    const v1, 0x7f090048

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "cust_network_sel_menu4_o2"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "get3Gsummary: 4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    const-string/jumbo v1, "cust_network_sel_menu4_orange"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "get3Gsummary: 5"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_8
    const-string/jumbo v1, "cust_network_sel_menu4_sfr"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "get3Gsummary: 6"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_9
    const-string/jumbo v1, "cust_network_sel_menu4_vodafone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "get3Gsummary: 7"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_a
    const-string/jumbo v1, "cust_network_sel_menu4_numeric"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "networkmode_in_can"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "get3Gsummary..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_c
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "get3Gsummary: 8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCaptionFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mValueList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mCaptionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getGlobalSummary(I)Ljava/lang/String;
    .locals 5

    const v4, 0x7f0d03c1

    const v3, 0x7f0d03c7

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    const-string/jumbo v1, "network_mode_global_lte_wcdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 4"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_3
    const-string/jumbo v1, "global_network_cdma_gsm_enable"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 5"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 6"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_4
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 10"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_6
    const-string/jumbo v1, "cdma_evdo_tfn"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 7"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 8"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 9"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_8
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 11"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_9
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 12"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_a
    const-string/jumbo v1, "network_mode_global_lte_gsm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 13"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const-string/jumbo v1, "global_network_cdma_gsm_enable"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 14"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 15"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_b
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 16"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_c
    const-string/jumbo v1, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "network_mode_global_lte_cdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 17"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6
    const-string/jumbo v1, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 18"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 19"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_d
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 20"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_e
    const-string/jumbo v1, "network_mode_global_lte_wcdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 21"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_8
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 22"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_f
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 23"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_9
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 24"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03cd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_10
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 25"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_a
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 26"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_11
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 27"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_b
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 28"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_12
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 29"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_c
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 30"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_13
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 31"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 32"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_14
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 33"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_e
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 34"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_15
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 35"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 36"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_16
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 37"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 38"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_17
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 39"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_11
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 40"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_18
    const-string/jumbo v1, "network_mode_global_tdscdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 41"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_12
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSummary: 41"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f0d03d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public getSummary(I)Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mValueList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->getSummaryList()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->mValueList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSummary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, v1, v0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/NetworkModeResourceLoader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getSummary: ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method
