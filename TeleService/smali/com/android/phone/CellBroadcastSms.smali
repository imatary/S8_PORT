.class public Lcom/android/phone/CellBroadcastSms;
.super Landroid/preference/PreferenceActivity;
.source "CellBroadcastSms.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;,
        Lcom/android/phone/CellBroadcastSms$MyHandler;
    }
.end annotation


# instance fields
.field private mButtonAdministrative:Landroid/preference/CheckBoxPreference;

.field private mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

.field private mButtonAtr:Landroid/preference/CheckBoxPreference;

.field private mButtonBcSms:Landroid/preference/CheckBoxPreference;

.field private mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

.field private mButtonEo:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational1:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational2:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational3:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational4:Landroid/preference/CheckBoxPreference;

.field private mButtonLafs:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal1:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal2:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal3:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal4:Landroid/preference/CheckBoxPreference;

.field private mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

.field private mButtonLodgings:Landroid/preference/CheckBoxPreference;

.field private mButtonMaintenance:Landroid/preference/CheckBoxPreference;

.field private mButtonMhh:Landroid/preference/CheckBoxPreference;

.field private mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

.field private mButtonNational1:Landroid/preference/CheckBoxPreference;

.field private mButtonNational2:Landroid/preference/CheckBoxPreference;

.field private mButtonNational3:Landroid/preference/CheckBoxPreference;

.field private mButtonNational4:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional1:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional2:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional3:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional4:Landroid/preference/CheckBoxPreference;

.field private mButtonRestaurants:Landroid/preference/CheckBoxPreference;

.field private mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

.field private mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

.field private mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

.field private mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

.field private mListLanguage:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -get0(Lcom/android/phone/CellBroadcastSms;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/CellBroadcastSms;)Lcom/android/phone/CellBroadcastSms$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/CellBroadcastSms;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/CellBroadcastSms;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/CellBroadcastSms;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSms;->setAllCbConfigButtons([I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private enableDisableAllCbConfigButtons(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method

.method private setAllCbConfigButtons([I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    aget v0, p1, v1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap2()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x2

    aget v0, p1, v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x3

    aget v0, p1, v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x14

    aget v0, p1, v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x15

    aget v0, p1, v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x16

    aget v0, p1, v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x17

    aget v0, p1, v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x18

    aget v0, p1, v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x19

    aget v0, p1, v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1a

    aget v0, p1, v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1b

    aget v0, p1, v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1c

    aget v0, p1, v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1d

    aget v0, p1, v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1e

    aget v0, p1, v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1f

    aget v0, p1, v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x4

    aget v0, p1, v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x5

    aget v0, p1, v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x6

    aget v0, p1, v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x7

    aget v0, p1, v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x8

    aget v0, p1, v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x9

    aget v0, p1, v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xa

    aget v0, p1, v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xb

    aget v0, p1, v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xc

    aget v0, p1, v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xd

    aget v0, p1, v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xe

    aget v0, p1, v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xf

    aget v0, p1, v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x10

    aget v0, p1, v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x11

    aget v0, p1, v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x12

    aget v0, p1, v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1d
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x13

    aget v3, p1, v3

    if-eqz v3, :cond_1e

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto/16 :goto_7

    :cond_8
    move v0, v2

    goto/16 :goto_8

    :cond_9
    move v0, v2

    goto/16 :goto_9

    :cond_a
    move v0, v2

    goto/16 :goto_a

    :cond_b
    move v0, v2

    goto/16 :goto_b

    :cond_c
    move v0, v2

    goto/16 :goto_c

    :cond_d
    move v0, v2

    goto/16 :goto_d

    :cond_e
    move v0, v2

    goto/16 :goto_e

    :cond_f
    move v0, v2

    goto/16 :goto_f

    :cond_10
    move v0, v2

    goto/16 :goto_10

    :cond_11
    move v0, v2

    goto/16 :goto_11

    :cond_12
    move v0, v2

    goto/16 :goto_12

    :cond_13
    move v0, v2

    goto/16 :goto_13

    :cond_14
    move v0, v2

    goto/16 :goto_14

    :cond_15
    move v0, v2

    goto/16 :goto_15

    :cond_16
    move v0, v2

    goto/16 :goto_16

    :cond_17
    move v0, v2

    goto/16 :goto_17

    :cond_18
    move v0, v2

    goto/16 :goto_18

    :cond_19
    move v0, v2

    goto/16 :goto_19

    :cond_1a
    move v0, v2

    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    goto :goto_1b

    :cond_1c
    move v0, v2

    goto :goto_1c

    :cond_1d
    move v0, v2

    goto :goto_1d

    :cond_1e
    move v1, v2

    goto :goto_1e
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/android/phone/CellBroadcastSms;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v1, Lcom/android/phone/CellBroadcastSms$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CellBroadcastSms$MyHandler;-><init>(Lcom/android/phone/CellBroadcastSms;Lcom/android/phone/CellBroadcastSms$MyHandler;)V

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "button_enable_disable_cell_bc_sms"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "list_language"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "button_emergency_broadcast"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_administrative"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_maintenance"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_local_weather"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_atr"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_lafs"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_restaurants"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_lodgings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_retail_directory"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_advertisements"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_stock_quotes"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_eo"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_mhh"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_technology_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_multi_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_local_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_regional_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_national_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_international_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_local_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_regional_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_national_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_international_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_local_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_regional_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_national_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_international_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_local_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_regional_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_national_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "button_international_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap5(I)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap0()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap7(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cdma_cell_broadcast_sms"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cdma_cell_broadcast_sms"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v4}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v4}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v5}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0, v5}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_15

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_1c
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_20

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_20
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap6(ZI)V

    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->-wrap3(ZI)V

    goto/16 :goto_0

    :cond_21
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return v3
.end method

.method protected onResume()V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "cdma_cell_broadcast_sms"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    goto :goto_1
.end method
