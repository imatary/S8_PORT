.class public Lcom/android/phone/InCallSoundEQListPreference;
.super Landroid/preference/ListPreference;
.source "InCallSoundEQListPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/InCallSoundEQListPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->isOffHook()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/InCallSoundEQListPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InCallSoundEQListPreference;->checkingDiagnosis(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/InCallSoundEQListPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->goMySound()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/InCallSoundEQListPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/InCallSoundEQListPreference;->showDisableSoundEQPopup(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->init()V

    return-void
.end method

.method private checkingDiagnosis(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voicecall_eq_list_value"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hearing_diagnosis"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->goMySound()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hearing_revision"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->isOffHook()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2, v2}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    goto :goto_0
.end method

.method private goMySound()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.hearingadjust.launch"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallSoundEQListPreference;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/InCallSoundEQListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/InCallSoundEQListPreference;->updatePreference()V

    invoke-direct {p0}, Lcom/android/phone/InCallSoundEQListPreference;->setListener()V

    return-void
.end method

.method private isOffHook()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "InCallSoundEQListPreference"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private setListener()V
    .locals 1

    new-instance v0, Lcom/android/phone/InCallSoundEQListPreference$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallSoundEQListPreference$5;-><init>(Lcom/android/phone/InCallSoundEQListPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSoundEQListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private showDisableSoundEQPopup(I)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/InCallSoundEQListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d05ef

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d05fa

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallSoundEQListPreference$4;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallSoundEQListPreference$4;-><init>(Lcom/android/phone/InCallSoundEQListPreference;I)V

    const v3, 0x7f0d02ca

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isPossibleEnableMySound()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "fail in onDialogClosed"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallSoundEQListPreference;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallSoundEQListPreference;->updatePreference()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    iget-object v0, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hearing_diagnosis"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/InCallSoundEQListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallSoundEQListPreference$1;-><init>(Lcom/android/phone/InCallSoundEQListPreference;)V

    const v1, 0x7f0d05ed

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isPossibleEnableMySound()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "fail in onCreate"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallSoundEQListPreference;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public updatePreference()V
    .locals 7

    iget-object v4, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceEqListValue(Landroid/content/Context;)I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-lt v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/InCallSoundEQListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voicecall_eq_list_value"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x3

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallSoundEQListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/InCallSoundEQListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallSoundEQListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallSoundEQListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
