.class public Lcom/android/phone/mobilenetworks/SummaryManager;
.super Ljava/lang/Object;
.source "SummaryManager.java"


# instance fields
.field private final SIM_1:Ljava/lang/String;

.field private final SIM_2:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SIM 1"

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->SIM_1:Ljava/lang/String;

    const-string/jumbo v0, "SIM 2"

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->SIM_2:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public changeSummaryWhenVolteInabled(Landroid/preference/SwitchPreference;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "persist.ril.ims.eutranParam"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "SummaryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableVolte = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", volteCall:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "SummaryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Common feature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "volte_settings_in_mobile_networks_common"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "SummaryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IMS.ENABLED feature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "enabled"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p1, :cond_8

    const-string/jumbo v1, "volte_settings_in_mobile_networks_hk"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "volte_settings_in_mobile_networks_tw"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const v1, 0x7f0d08da

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_1
    const-string/jumbo v1, "volte_settings_in_mobile_networks_dcm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0d08f3

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    const v1, 0x7f0d08f4

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_2
    const-string/jumbo v1, "volte_settings_in_mobile_networks_chn"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0d08d6

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    :cond_3
    const-string/jumbo v1, "rename_volte_menu_oro"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0d08d7

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    const v1, 0x7f0d08db

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_4
    const-string/jumbo v1, "rename_volte_menu_ops"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0d08e2

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    const v1, 0x7f0d08e3

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_5
    const-string/jumbo v1, "rename_volte_menu_dt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0d088f

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    :cond_6
    const-string/jumbo v1, "volte_settings_in_mobile_networks_usc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f0d08d8

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    :cond_7
    const-string/jumbo v1, "rename_volte_menu_cct"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0d08e4

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    const v1, 0x7f0d08e5

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_8
    return-void
.end method

.method public compositeSumaryMultiSim(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const v7, 0x7f0d0c31

    const v6, 0x7f0d0350

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public compositeSummaryNetworkOperator(Ljava/lang/String;ILcom/android/phone/GsmUmtsOptions;)V
    .locals 9

    const v8, 0x7f0d0c31

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p3, :cond_3

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v7, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_operator_choice_auto_manual"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/mobilenetworks/SummaryManager;->compositeSumaryMultiSim(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    move-object p1, v0

    :cond_2
    invoke-virtual {p3, p1}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandSummary(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_operator_choice_auto_manual"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v1, "SIM 1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SIM 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    const-string/jumbo v4, "SIM 2: "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    const-string/jumbo v4, "SIM 1: "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "SIM 1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    const-string/jumbo v4, "SIM 2: "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "SIM 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    const-string/jumbo v4, "SIM 1: "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/mobilenetworks/SummaryManager;->compositeSumaryMultiSim(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public setSummaryButtonCarrierOperator(Lcom/android/phone/GsmUmtsOptions;)V
    .locals 8

    const v7, 0x7f0d0c31

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const v4, 0x7f0d0350

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_operator_choice_auto_manual"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_3

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandSummary(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v5, :cond_5

    const-string/jumbo v1, "SIM 1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SIM 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "SIM 1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "SIM 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setSummaryButtonDataEnabled(Landroid/preference/TwoStatePreference;)V
    .locals 1

    const v0, 0x7f0d0379

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    return-void
.end method

.method public setSummaryButtonDataRoam(Landroid/preference/TwoStatePreference;)V
    .locals 2

    const v1, 0x7f0d0381

    const-string/jumbo v0, "data_roaming_warning_popup"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "data_roaming_style_for_zta"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d038c

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "data_roaming_style_for_att"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    invoke-virtual {p1, v1}, Landroid/preference/TwoStatePreference;->setSummaryOff(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0d0388

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setSummary(I)V

    goto :goto_0
.end method

.method public setWifiCallingMenuSummary(Landroid/preference/SwitchPreference;)V
    .locals 2

    const-string/jumbo v0, "support_wfc_dt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d04af

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isWifiCallStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0d04ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/SummaryManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0d04ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
