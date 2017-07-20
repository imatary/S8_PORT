.class public Lcom/android/phone/callsettings/CallsettingsConstants;
.super Ljava/lang/Object;
.source "CallsettingsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CallsettingsConstants$EtcSettings;,
        Lcom/android/phone/callsettings/CallsettingsConstants$GeneralSettings;,
        Lcom/android/phone/callsettings/CallsettingsConstants$IntentAction;,
        Lcom/android/phone/callsettings/CallsettingsConstants$PhoneSettings;,
        Lcom/android/phone/callsettings/CallsettingsConstants$RCSSettings;,
        Lcom/android/phone/callsettings/CallsettingsConstants$VideoCallSettings;,
        Lcom/android/phone/callsettings/CallsettingsConstants$VoicemailSettings;,
        Lcom/android/phone/callsettings/CallsettingsConstants$WiFiSettings;
    }
.end annotation


# static fields
.field public static final DropDownPreference:Ljava/lang/String;

.field public static final EditPhoneNumberPreference:Ljava/lang/String;

.field public static final EditTextPreference:Ljava/lang/String;

.field public static final ListPreference:Ljava/lang/String;

.field public static final PreferenceScreen:Ljava/lang/String;

.field public static final SemSwitchPreferenceScreen:Ljava/lang/String;

.field public static final SwitchPreference:Ljava/lang/String;

.field public static final VoicemailRingtonePreference:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CallsettingsConstants;->EditPhoneNumberPreference:Ljava/lang/String;

    const-class v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CallsettingsConstants;->EditTextPreference:Ljava/lang/String;

    const-class v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CallsettingsConstants;->ListPreference:Ljava/lang/String;

    const-class v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CallsettingsConstants;->PreferenceScreen:Ljava/lang/String;

    const-class v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    const-class v0, Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CallsettingsConstants;->SemSwitchPreferenceScreen:Ljava/lang/String;

    const-class v0, Lcom/android/phone/DropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CallsettingsConstants;->DropDownPreference:Ljava/lang/String;

    const-class v0, Lcom/android/phone/VoicemailRingtonePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/CallsettingsConstants;->VoicemailRingtonePreference:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
