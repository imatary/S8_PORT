.class public Lcom/android/phone/mobilenetworks/MobileNetworksManager;
.super Ljava/lang/Object;
.source "MobileNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCdmaOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "remove_cdma_options_cdma_system_select"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "cdma_system_select_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveCdmaOptionsCdmaSubscription()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "cdma_subscription_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveCdmaOptionsCdmaActivateDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "cdma_activate_device_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveCdmaOptionsCarrierSettings()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "carrier_settings_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveCdmaOptionsApnExpand()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_apn_key_cdma"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo v0, "remove_cdma_options_carrier_sel"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_carrier_sel_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo v0, "remove_cdma_options_dun"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_dun_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p2
.end method

.method private getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsApn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_apn_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsCarrierSel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_carrier_sel_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsCarrierSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "carrier_settings_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v0, "remove_gsm_umts_options_global_gsm_umts_system_select"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_global_gsm_umts_system_select_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsSRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "s_roaming_category_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p2
.end method

.method public static getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;
    .locals 1

    sget-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    return-object v0
.end method

.method private getMobileNetworkSettingsKorRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksKorDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_data_enabled_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "remove_mobile_networks_kor_roaming"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_roaming_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v0, "remove_mobile_networks_kor_lte_roaming"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_lte_roaming_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksKorApn()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_apn_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string/jumbo v0, "remove_mobile_networks_kor_carrier_sel"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_carrier_sel_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksKorDataNetworkMode()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_data_network_mode_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksKorNetworkStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_network_status_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p2
.end method

.method private getMobileNetworkSettingsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_roaming_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "remove_mobile_networks_cdma_lte_data_service"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "cdma_lte_data_service_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v0, "remove_mobile_networks_enabled_networks"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "enabled_networks_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveDisalbe2gMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_disable_2g_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_data_enabled_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo v0, "remove_mobile_networks_enhanced_4glte"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_enhanced_4glte_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo v0, "remove_mobile_networks_international_enhanced_4glte"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_international_enhanced_4glte_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksEnhancedLteServices()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_enhanced_lte_services_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksPreferredRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "preferred_roaming_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string/jumbo v0, "remove_mobile_networks_global_data_roaming_access"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "global_data_roaming_access_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string/jumbo v0, "remove_mobile_networks_roaming_state"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "roaming_state_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string/jumbo v0, "remove_mobile_networks_signal_strength"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "signal_strength_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksPreferredNetworks()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_preferred_networks_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksEnhancedRoamingMode()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "enhanced_roaming_mode_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksVolteCall()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "volte_call_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksWifiCalling()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "wifi_calling_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string/jumbo v0, "remove_mobile_networks_roaming_settings"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_roaming_settings_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksPreferNetworkMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_prefer_networkmodespinner_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_prefer_networkmodespinner1_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_prefer_networkmodespinner2_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p2

    :cond_11
    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_prefer_networkmodespinner_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_12
    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_prefer_networkmodespinner1_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string/jumbo v1, "button_prefer_networkmodespinner2_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-ne v1, p1, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private hideDisalbe2gMenuByDM()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ShowDisable2gMenu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "MobileNetworksManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hideDisalbe2gMenuByDM : ShowDisable2gMenu "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v4, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isEmergencyMode(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isLteOnCdma()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNotCdmaPhone(I)Z
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isRemoveCdmaOptionsApnExpand()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "remove_cdma_options_apn_cdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    const-string/jumbo v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getActivatedSimNum()I

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private isRemoveCdmaOptionsCarrierSettings()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string/jumbo v2, "remove_cdma_options_carrier_settings"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isRemoveCdmaOptionsCdmaActivateDevice()Z
    .locals 1

    const-string/jumbo v0, "remove_cdma_options_cdma_activate_device"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isLteOnCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveCdmaOptionsCdmaSubscription()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "remove_cdma_options_cdma_subscription"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "cdma_subscription_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/CdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    return v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isRemoveDisalbe2gMenu()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "support_disable_2g_menu"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->hideDisalbe2gMenuByDM()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveGsmUmtsOptionsApn(I)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "remove_gsm_umts_options_apn"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string/jumbo v2, "remove_cdma_options_apn_cdma"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "chn_cdma_network_on_all_rat"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isNotCdmaPhone(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const-string/jumbo v2, "chn_cdma_network_on_all_rat"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    const/4 v2, 0x0

    return v2

    :cond_4
    return v3

    :cond_5
    return v3

    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    return v3
.end method

.method private isRemoveGsmUmtsOptionsCarrierSel(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    return v4

    :cond_0
    const-string/jumbo v2, "remove_gsm_umts_options_carrier_sel"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isNotCdmaPhone(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    return v4

    :cond_3
    const-string/jumbo v2, "chn_cdma_network_on_all_rat"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsCHN;->isCtcSimCardInsertedForSixMode()Z

    move-result v2

    if-eqz v2, :cond_6

    return v4

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    return v4

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_6

    return v4

    :cond_6
    const-string/jumbo v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne p1, v4, :cond_7

    return v4

    :cond_7
    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isLte()Z

    move-result v2

    if-nez v2, :cond_8

    return v4

    :cond_8
    return v5
.end method

.method private isRemoveGsmUmtsOptionsCarrierSettings()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "carrier_settings_enable"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private isRemoveMobileNetworksDataEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v2, "remove_mobile_networks_data_enabled"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v2, "support_safetycare"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v0

    :cond_1
    const-string/jumbo v2, "disable_mobile_data_settings"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->shouldHideCarrierSettings(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_4

    return v3

    :cond_3
    return v3

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private isRemoveMobileNetworksEnhancedLteServices()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "remove_mobile_networks_enhanced_lte_services"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "enabled"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "support_softphone"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveMobileNetworksKorApn()Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "remove_mobile_networks_kor_apn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SHW-M250L"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveMobileNetworksKorDataEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "remove_mobile_networks_kor_data_enabled"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isRemoveMobileNetworksKorDataNetworkMode()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "remove_mobile_networks_kor_data_network_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "mobile_newtork_style_for_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isDataNetworkModeVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method private isRemoveMobileNetworksKorNetworkStatus()Z
    .locals 1

    const-string/jumbo v0, "remove_mobile_networks_kor_network_status"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveMobileNetworksPreferredNetworks()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "remove_mobile_networks_preferred_networks"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCHN;->isCtcSimCardInsertedForSixMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isRemoveMobileNetworksRoaming()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "remove_mobile_networks_roaming"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "remove_mobile_networks_roaming_settings"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getSimNumeric(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v0

    const-string/jumbo v2, "national_roaming_mode_menu"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "national_roaming_mode_menu_play"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->isPlaySIM(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    return v4

    :cond_1
    return v4

    :cond_2
    return v3
.end method

.method private shouldHideCarrierSettings(Landroid/content/Context;)I
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "hide_carrier_network_settings_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public getRemovePreferences(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getRemovePreferences(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getRemovePreferences(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getRemovePreferences(II)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getRemovePreferences(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sparse-switch p2, :sswitch_data_0

    return-object v0

    :sswitch_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getMobileNetworkSettingsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    :sswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getCdmaOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    :sswitch_2
    const-string/jumbo v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    :sswitch_3
    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getMobileNetworkSettingsKorRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070024 -> :sswitch_1
        0x7f070032 -> :sswitch_2
        0x7f070046 -> :sswitch_0
        0x7f070047 -> :sswitch_3
    .end sparse-switch
.end method

.method public isRemoveGsmUmtsOptionsSRoaming()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "remove_gsm_umts_options_s_roaming"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoveMobileNetworksEnhancedRoamingMode()Z
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "remove_mobile_networks_enhanced_roaming_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "roaming_without_chameleon"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->displayRoamingNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public isRemoveMobileNetworksPreferNetworkMode(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "remove_mobile_networks_preferred_network_mode"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoveMobileNetworksPreferredRoaming()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "remove_mobile_networks_preferred_roaming"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getSimNumeric(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "national_roaming_mode_menu"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "national_roaming_mode_menu_play"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const-string/jumbo v1, "26006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_4

    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    return v3
.end method

.method public isRemoveMobileNetworksVolteCall()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string/jumbo v4, "remove_mobile_networks_volte_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_0
    const-string/jumbo v4, "check_sim_without_setting"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->isSEATELSIM(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v3, "MobileNetworksManager"

    const-string/jumbo v4, "VolteCall Menu will be removed by seatelSim\'s requirement"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->isRjioSIM(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v3, "MobileNetworksManager"

    const-string/jumbo v4, "VolteCall Menu will be removed by RjioSim\'s requirement"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->isTeltraSIM(I)Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_3
    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->isAPTSIM(I)Z

    move-result v4

    if-eqz v4, :cond_4

    return v5

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportNetworkVoLTE()Z

    move-result v1

    const-string/jumbo v4, "volte_settings_in_mobile_networks_xaa"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    :cond_5
    return v5

    :cond_6
    const-string/jumbo v4, "volte_settings_in_mobile_networks_usc"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTESupportedByUtran()Z

    move-result v4

    if-eqz v4, :cond_7

    return v3

    :cond_7
    return v5

    :cond_8
    const-string/jumbo v4, "volte_settings_in_mobile_networks_global"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTEForVZW()Z

    move-result v4

    if-eqz v4, :cond_9

    return v3

    :cond_9
    return v5

    :cond_a
    const-string/jumbo v4, "volte_settings_in_mobile_networks_tmo"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTESupport()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/services/telephony/operator/usa/JanskyCallerInfo;->isEnableNsdsServiceStatus()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    return v5

    :cond_c
    return v3

    :cond_d
    const-string/jumbo v4, "check_non_volte_sim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "volte_settings_in_mobile_networks_chn"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "volte_settings_in_mobile_networks_hk"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "volte_settings_in_mobile_networks_tw"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "volte_settings_in_mobile_networks_eur"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    if-eqz v2, :cond_f

    if-eqz v1, :cond_10

    :cond_f
    const-string/jumbo v4, "volte_settings_in_mobile_networks_common"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    :goto_0
    if-nez v2, :cond_12

    return v5

    :cond_10
    const-string/jumbo v3, "MobileNetworksManager"

    const-string/jumbo v4, "VolteCall Menu will be removed by ims api"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_11
    move v2, v3

    goto :goto_0

    :cond_12
    return v3
.end method

.method public isRemoveMobileNetworksWifiCalling()Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "support_wfc_dt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoWifiSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "remove_mobile_networks_wifi_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public removePreferences(Landroid/preference/PreferenceScreen;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->removePreferences(Landroid/preference/PreferenceScreen;II)V

    return-void
.end method

.method public removePreferences(Landroid/preference/PreferenceScreen;II)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getRemovePreferences(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updatePreferencesVolteCall(Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreference;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "MobileNetworksManager"

    const-string/jumbo v1, "updatePreferencesVolteCall : preferenceScreen is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "MobileNetworksManager"

    const-string/jumbo v1, "updatePreferencesVolteCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksVolteCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "volte_call_key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MobileNetworksManager"

    const-string/jumbo v1, "remove VolteCallPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "MobileNetworksManager"

    const-string/jumbo v1, "add VolteCallPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
