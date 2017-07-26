.class public Lcom/android/phone/nwservice/VoiceMail;
.super Landroid/preference/PreferenceActivity;
.source "VoiceMail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nwservice/VoiceMail$1;
    }
.end annotation


# instance fields
.field editRingTime:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoicemailList1Pref:Landroid/preference/PreferenceScreen;

.field private mVoicemailList2Pref:Landroid/preference/PreferenceScreen;

.field private mVoicemailList3Pref:Landroid/preference/PreferenceScreen;

.field private mVoicemailList4Pref:Landroid/preference/PreferenceScreen;

.field private mVoicemailList5Pref:Landroid/preference/PreferenceScreen;

.field private mVoicemailList6Pref:Landroid/preference/PreferenceScreen;

.field private mVoicemailList7Pref:Landroid/preference/PreferenceScreen;

.field private mVoicemailList8Pref:Landroid/preference/PreferenceScreen;

.field msgID:I

.field number:Ljava/lang/String;

.field setRingTimeResult:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/phone/nwservice/VoiceMail;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMail;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/nwservice/VoiceMail;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/VoiceMail;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/nwservice/VoiceMail;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/VoiceMail;->checkInputRingTimeIsRight(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/nwservice/VoiceMail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/nwservice/VoiceMail;->alertdialogSetRingTime()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/nwservice/VoiceMail;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/VoiceMail;->procUSSDCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/nwservice/VoiceMail;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/nwservice/VoiceMail;->startSoundandDisplaySetting()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/nwservice/VoiceMail;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/VoiceMail;->toastSample(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/android/phone/nwservice/VoiceMail;->setRingTimeResult:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/nwservice/VoiceMail$1;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/VoiceMail$1;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/VoiceMail;->handler:Landroid/os/Handler;

    return-void
.end method

.method private alertdialogSetRingTime()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/phone/nwservice/VoiceMail;->factory:Landroid/view/LayoutInflater;

    const v5, 0x7f040101

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f100078

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/nwservice/VoiceMail;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0af3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/16 v6, 0x78

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0ae4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/VoiceMail$7;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/VoiceMail$7;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    const v5, 0x7f0d0af0

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/VoiceMail$8;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/VoiceMail$8;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    const v5, 0x7f0d0af1

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/phone/nwservice/VoiceMail$9;

    invoke-direct {v4, p0}, Lcom/android/phone/nwservice/VoiceMail$9;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const v4, 0x7f100079

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/nwservice/VoiceMail;->editRingTime:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/nwservice/VoiceMail;->editRingTime:Landroid/widget/EditText;

    new-instance v5, Lcom/android/phone/nwservice/VoiceMail$10;

    invoke-direct {v5, p0, v1}, Lcom/android/phone/nwservice/VoiceMail$10;-><init>(Lcom/android/phone/nwservice/VoiceMail;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v4, p0, Lcom/android/phone/nwservice/VoiceMail;->editRingTime:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v4, p0, Lcom/android/phone/nwservice/VoiceMail;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/phone/nwservice/VoiceMail$11;

    invoke-direct {v5, p0}, Lcom/android/phone/nwservice/VoiceMail$11;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private checkInputRingTimeIsRight(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    return v7

    :pswitch_0
    return v7

    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v4, "000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "120"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "VoiceMail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "- checkInputRingTimeIsRight : compareResult1 -  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "VoiceMail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "- checkInputRingTimeIsRight : compareResult2 -  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_0

    if-gtz v1, :cond_0

    const/4 v4, 0x1

    return v4

    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    move-object v2, p1

    goto :goto_0

    :cond_0
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getVoiceMailSettingList()V
    .locals 4

    const-string/jumbo v2, "voicemail_active_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/VoiceMail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList1Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "voicemail_ringtime_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/VoiceMail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList2Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "voicemail_deactive_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/VoiceMail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList3Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "voicemail_check_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/VoiceMail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList4Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "voicemail_play_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/VoiceMail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList5Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "voicemail_setting_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/VoiceMail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList6Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "voicemail_chek_message_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/VoiceMail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList7Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "voicemail_bivrate_notice_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/VoiceMail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList8Pref:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList1Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList2Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList3Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList4Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList5Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList6Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList7Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->mVoicemailList8Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->mPreference:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private procUSSDCommand(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/VoiceMail;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    const-string/jumbo v1, "VoiceMail"

    const-string/jumbo v2, "skip USSD request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/VoiceMail;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private startSoundandDisplaySetting()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/phone/nwservice/VoiceMail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string/jumbo v6, "com.android.settings"

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "com.android.settings.SoundAndDisplaySettings"

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "com.android.settings.MAIN"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, -0x1

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/nwservice/VoiceMail;->setResult(ILandroid/content/Intent;)V

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/android/phone/nwservice/VoiceMail;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "ClassNotFound"

    invoke-direct {p0, v6}, Lcom/android/phone/nwservice/VoiceMail;->toastSample(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v6, "NameNotFound"

    invoke-direct {p0, v6}, Lcom/android/phone/nwservice/VoiceMail;->toastSample(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private toastSample(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f07006a

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/VoiceMail;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/VoiceMail;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/VoiceMail;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/nwservice/VoiceMail;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/nwservice/VoiceMail;->handler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/nwservice/VoiceMail;->getVoiceMailSettingList()V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/VoiceMail;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/VoiceMail;->factory:Landroid/view/LayoutInflater;

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/VoiceMail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/phone/nwservice/VoiceMail;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/phone/nwservice/VoiceMail;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 13

    const/4 v8, 0x0

    const v12, 0x7f0d032a

    const/4 v11, 0x1

    const/4 v10, 0x0

    iput p1, p0, Lcom/android/phone/nwservice/VoiceMail;->msgID:I

    iget v7, p0, Lcom/android/phone/nwservice/VoiceMail;->msgID:I

    sparse-switch v7, :sswitch_data_0

    :cond_0
    return-object v8

    :sswitch_0
    iget-object v7, p0, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    if-eqz v7, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v7, "VoiceMail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "- onCreateDialog : id -  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/phone/nwservice/VoiceMail;->msgID:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const v6, 0x7f0d0392

    const v3, 0x7f0d0392

    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/phone/nwservice/VoiceMail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/VoiceMail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/nwservice/VoiceMail$2;

    invoke-direct {v7, p0}, Lcom/android/phone/nwservice/VoiceMail$2;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    const v8, 0x7f0d0af0

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/nwservice/VoiceMail$3;

    invoke-direct {v7, p0}, Lcom/android/phone/nwservice/VoiceMail$3;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    const v8, 0x7f0d0af1

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/nwservice/VoiceMail$4;

    invoke-direct {v7, p0}, Lcom/android/phone/nwservice/VoiceMail$4;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    :pswitch_1
    const v6, 0x7f0d0ae3

    const v3, 0x7f0d0aef

    goto :goto_0

    :pswitch_2
    const v6, 0x7f0d0ae5

    const v3, 0x7f0d0af2

    goto :goto_0

    :pswitch_3
    const v6, 0x7f0d0ae7

    const v3, 0x7f0d0af4

    goto :goto_0

    :pswitch_4
    const v6, 0x7f0d0ae8

    const v3, 0x7f0d0af5

    goto :goto_0

    :pswitch_5
    const v6, 0x7f0d0ae4

    const v3, 0x7f0d0b50

    goto :goto_0

    :sswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d0aea

    invoke-virtual {p0, v7}, Lcom/android/phone/nwservice/VoiceMail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d0b01

    invoke-virtual {p0, v7}, Lcom/android/phone/nwservice/VoiceMail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v12}, Lcom/android/phone/nwservice/VoiceMail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/android/phone/nwservice/VoiceMail$5;

    invoke-direct {v8, p0}, Lcom/android/phone/nwservice/VoiceMail$5;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    :sswitch_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v7, 0x7f0d0b0b

    invoke-virtual {p0, v7}, Lcom/android/phone/nwservice/VoiceMail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v1

    :sswitch_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/nwservice/VoiceMail;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d0af3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/16 v9, 0x78

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v12}, Lcom/android/phone/nwservice/VoiceMail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/android/phone/nwservice/VoiceMail$6;

    invoke-direct {v8, p0}, Lcom/android/phone/nwservice/VoiceMail$6;-><init>(Lcom/android/phone/nwservice/VoiceMail;)V

    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_0
        0xc8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/nwservice/VoiceMail;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.nwservice.NetworkService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/VoiceMail;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/nwservice/VoiceMail;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "VoiceMail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v3, "VoiceMail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceClick: position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return v6

    :pswitch_0
    const-string/jumbo v3, "*121*1*#"

    iput-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/nwservice/VoiceMail;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/nwservice/VoiceMail;->alertdialogSetRingTime()V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "#121*1#"

    iput-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/phone/nwservice/VoiceMail;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "*#121*1#"

    invoke-direct {p0, v3}, Lcom/android/phone/nwservice/VoiceMail;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v3, "tel:1417"

    iput-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/VoiceMail;->showDialog(I)V

    goto :goto_0

    :pswitch_5
    const-string/jumbo v3, "tel:1416"

    iput-object v3, p0, Lcom/android/phone/nwservice/VoiceMail;->number:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/VoiceMail;->showDialog(I)V

    goto :goto_0

    :pswitch_6
    const-string/jumbo v3, "*#124#"

    invoke-direct {p0, v3}, Lcom/android/phone/nwservice/VoiceMail;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_0

    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/nwservice/VoiceMail;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/phone/nwservice/VoiceMailNoticeSetting;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/VoiceMail;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "VoiceMail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/nwservice/VoiceMail;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/phone/nwservice/VoiceMailMissedCallSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/VoiceMail;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "VoiceMail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public placeVoiceMailCall(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "VoiceMail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "- placeVoiceMailCall : callNumber -  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/VoiceMail;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
