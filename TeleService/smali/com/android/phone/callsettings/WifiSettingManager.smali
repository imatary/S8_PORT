.class public Lcom/android/phone/callsettings/WifiSettingManager;
.super Ljava/lang/Object;
.source "WifiSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/WifiSettingManager$Preferences;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/phone/callsettings/WifiSettingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/callsettings/WifiSettingManager;

    invoke-direct {v0}, Lcom/android/phone/callsettings/WifiSettingManager;-><init>()V

    sput-object v0, Lcom/android/phone/callsettings/WifiSettingManager;->sInstance:Lcom/android/phone/callsettings/WifiSettingManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/callsettings/WifiSettingManager;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/WifiSettingManager;->sInstance:Lcom/android/phone/callsettings/WifiSettingManager;

    return-object v0
.end method

.method private getPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 4

    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_0
    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SemSwitchPreferenceScreen:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v1, Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_1
    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->PreferenceScreen:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v1, Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1

    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/WifiSettingManager;->getPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getRemovePreferences()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/WifiSettingManager$Preferences;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->isUnifiedDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference"

    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SemSwitchPreferenceScreen:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference_att"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference_spr"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_meterial_wifi_calling"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "support_vowifi_spr"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference"

    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SemSwitchPreferenceScreen:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_meterial_wifi_calling"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference_att"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference_unified"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "support_vowifi_att_wave2"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference"

    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SemSwitchPreferenceScreen:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_meterial_wifi_calling"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference_spr"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference_unified"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference_spr"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference_att"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference_unified"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->showWifiPreference()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_meterial_wifi_calling"

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    const-string/jumbo v2, "button_wifi_call_preference"

    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SemSwitchPreferenceScreen:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public removePreferences(Landroid/preference/PreferenceCategory;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiSettingManager;->getRemovePreferences()Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/callsettings/WifiSettingManager$Preferences;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/phone/callsettings/WifiSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
