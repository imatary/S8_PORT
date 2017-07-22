.class public Lcom/android/phone/answeringmemo/AnsweringMemoSettings;
.super Landroid/preference/PreferenceActivity;
.source "AnsweringMemoSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/answeringmemo/AnsweringMemoSettings$1;
    }
.end annotation


# instance fields
.field private mAnsweringMemoSettingPref:Landroid/preference/ListPreference;

.field private mLanguageOptions:[Ljava/lang/String;

.field private mLastSelectedIndex:I

.field mLimitListener:Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

.field private mPickerDialog:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

.field private mPrevSelectedPosition:I

.field private mRingDurationSettingPref:Landroid/preference/Preference;

.field private mSelectedPosition:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSoundGuidanceText:[Ljava/lang/String;

.field private mSoundLanguageSettingPref:Landroid/preference/Preference;

.field private prefSet:Landroid/preference/PreferenceScreen;

.field private prevSelectedIndex:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mAnsweringMemoSettingPref:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLanguageOptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mPrevSelectedPosition:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSelectedPosition:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSoundGuidanceText:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->prevSelectedIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mPrevSelectedPosition:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSelectedPosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->initAnsweringMemoStatus(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->setSystemSettingsForAutoAnswer(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->setToPreviousIndex()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->updateMemoSettingSummary(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->prevSelectedIndex:I

    iput v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLastSelectedIndex:I

    new-instance v0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$1;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLimitListener:Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

    return-void
.end method

.method private clearPickerDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mPickerDialog:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mPickerDialog:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mPickerDialog:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    :cond_0
    return-void
.end method

.method private confirmSelectionDialog(Landroid/content/SharedPreferences;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0cd0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$4;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$4;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;

    invoke-direct {v3, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$5;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private initAnsweringMemoStatus(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mRingDurationSettingPref:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mRingDurationSettingPref:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initRingDuration()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "callsettings_ring_duration"

    const/16 v3, 0xd

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "ring_duration_setting"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0d0cbb

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->updateRingDurationSettingSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initSoundLanguage()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "callsettings_sound_language"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "sound_language"

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLanguageOptions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->updateSoundLanguageSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSystemSettingsForAutoAnswer(Z)V
    .locals 3

    const-string/jumbo v0, "AnsweringMemoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemSettingsForAutoAnswer :  isChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "automatic_answering_enable_sharedpref"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setToPreviousIndex()V
    .locals 3

    const-string/jumbo v0, "AnsweringMemoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastSelectedIndex :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLastSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "callsettings_answer_memo"

    iget v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLastSelectedIndex:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "answering_memo_setting"

    iget v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLastSelectedIndex:I

    const v2, 0x7f0900cb

    invoke-direct {p0, v0, v2, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->updateMemoSettingSummary(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mAnsweringMemoSettingPref:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLastSelectedIndex:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLastSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->initAnsweringMemoStatus(I)V

    return-void
.end method

.method private setupPreferences()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "answering_memo_setting"

    invoke-virtual {p0, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mAnsweringMemoSettingPref:Landroid/preference/ListPreference;

    const-string/jumbo v0, "ring_duration_setting"

    invoke-virtual {p0, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mRingDurationSettingPref:Landroid/preference/Preference;

    const-string/jumbo v0, "sound_language"

    invoke-virtual {p0, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSoundLanguageSettingPref:Landroid/preference/Preference;

    return-void
.end method

.method private showMemStatusDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0cbf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0cd1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$2;

    invoke-direct {v3, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$2;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$3;

    invoke-direct {v2, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$3;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRingDurationPickerDialog()V
    .locals 9

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->clearPickerDialog()V

    const/16 v5, 0x78

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "callsettings_ring_duration"

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v0, "AnsweringMemoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showRingDurationPickerDialog :: limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v5, 0x37

    :cond_0
    new-instance v0, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLimitListener:Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;

    const v1, 0x7f0d0cce

    invoke-virtual {p0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;-><init>(Landroid/content/Context;Lcom/android/phone/answeringmemo/RingDurationPickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mPickerDialog:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mPickerDialog:Lcom/android/phone/answeringmemo/RingDurationPickerDialog;

    invoke-virtual {v0}, Lcom/android/phone/answeringmemo/RingDurationPickerDialog;->show()V

    return-void
.end method

.method private showSoundLanguageDialog()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400ed

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v5, 0x7f100292

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSoundGuidanceText:[Ljava/lang/String;

    iget v6, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSelectedPosition:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f1000b1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLanguageOptions:[Ljava/lang/String;

    const v7, 0x7f040032

    invoke-direct {v5, p0, v7, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0d0ccf

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0d0ccb

    invoke-virtual {p0, v5}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;

    invoke-direct {v6, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$6;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d086a

    invoke-virtual {p0, v6}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$7;

    invoke-direct {v7, p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$7;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSelectedPosition:I

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget v5, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSelectedPosition:I

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V

    new-instance v5, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$8;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$8;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;Landroid/widget/TextView;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v5, 0x7f100291

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setFocusable(Z)V

    new-instance v5, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$9;

    invoke-direct {v5, p0, v2}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings$9;-><init>(Lcom/android/phone/answeringmemo/AnsweringMemoSettings;Landroid/widget/ListView;)V

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateAutoAnswerSettings()V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "automatic_answering_enable_sharedpref"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->confirmSelectionDialog(Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method

.method private updateMemoSettingSummary(Ljava/lang/String;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    aget-object v2, v1, p3

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public initAnsweringMemo()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    const-string/jumbo v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->isSystemSettingAllSoundOff()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "callsettings_answer_memo"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mAnsweringMemoSettingPref:Landroid/preference/ListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_0
    const-string/jumbo v1, "AnsweringMemoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mAnsweringMemoSettingPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    const-string/jumbo v1, "answering_memo_setting"

    const v2, 0x7f0900cb

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->updateMemoSettingSummary(Ljava/lang/String;II)V

    invoke-direct {p0, v0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->initAnsweringMemoStatus(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "callsettings_answer_memo"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->prevSelectedIndex:I

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mAnsweringMemoSettingPref:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "callsettings_answer_memo"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->prevSelectedIndex:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string/jumbo v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0095

    invoke-virtual {p0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLanguageOptions:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSoundGuidanceText:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "callsettings_sound_language"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSelectedPosition:I

    iget v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSelectedPosition:I

    iput v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mPrevSelectedPosition:I

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->setupPreferences()V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AnsweringMemoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "AnsweringMemoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mRingDurationSettingPref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->showRingDurationPickerDialog()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSoundLanguageSettingPref:Landroid/preference/Preference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->showSoundLanguageDialog()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->initAnsweringMemo()V

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->initSoundLanguage()V

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->initRingDuration()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "AnsweringMemoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSharedPreferenceChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "answering_memo_setting"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "callsettings_answer_memo"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->mLastSelectedIndex:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "callsettings_answer_memo"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_0

    if-ne v1, v6, :cond_3

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->checkPhoneVibrateOrSilentMode()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemo(Z)V

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->checkAvailableStorage()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->updateAutoAnswerSettings()V

    :goto_0
    const v2, 0x7f0900cb

    invoke-direct {p0, p2, v2, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->updateMemoSettingSummary(Ljava/lang/String;II)V

    const-string/jumbo v2, "AnsweringMemoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSharedPreferenceChanged :  condition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->initAnsweringMemoStatus(I)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->showMemStatusDialog()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemo(Z)V

    goto :goto_0
.end method

.method public updateRingDurationSettingSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateSoundLanguageSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "AnsweringMemoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected summary"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/answeringmemo/AnsweringMemoSettings;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
