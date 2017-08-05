.class public Lcom/android/phone/nwservice/CLIRSetting;
.super Landroid/preference/PreferenceActivity;
.source "CLIRSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nwservice/CLIRSetting$1;,
        Lcom/android/phone/nwservice/CLIRSetting$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private handler:Landroid/os/Handler;

.field private mClirList1Pref:Landroid/preference/PreferenceScreen;

.field private mClirList2Pref:Landroid/preference/PreferenceScreen;

.field private mHandler:Lcom/android/phone/nwservice/CLIRSetting$MyHandler;

.field protected mIsForeground:Z

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

.field msgID:I

.field number:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/phone/nwservice/CLIRSetting;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/nwservice/CLIRSetting;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CLIRSetting;->procUSSDCommand(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-boolean v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->DBG:Z

    new-instance v0, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;-><init>(Lcom/android/phone/nwservice/CLIRSetting;Lcom/android/phone/nwservice/CLIRSetting$MyHandler;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->mHandler:Lcom/android/phone/nwservice/CLIRSetting$MyHandler;

    iput-boolean v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->mIsForeground:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->mPreference:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/nwservice/CLIRSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/CLIRSetting$1;-><init>(Lcom/android/phone/nwservice/CLIRSetting;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getVoiceMailSettingList()V
    .locals 4

    const-string/jumbo v2, "clir_active_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CLIRSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->mClirList1Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "clir_deactive_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CLIRSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->mClirList2Pref:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/CLIRSetting;->mClirList1Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/CLIRSetting;->mClirList2Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->mPreference:Ljava/util/ArrayList;

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

    iget-object v1, p0, Lcom/android/phone/nwservice/CLIRSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/CLIRSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CLIRSetting;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    const-string/jumbo v1, "CLIRListPreference"

    const-string/jumbo v2, "skip USSD request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nwservice/CLIRSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CLIRSetting;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .locals 6

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/android/phone/nwservice/CLIRSetting;->clirArray:[I

    aget v2, p1, v5

    if-eq v2, v5, :cond_0

    aget v2, p1, v5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    const-string/jumbo v2, "CLIRListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetCLIRResult: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CLIRListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetCLIRResult: tmpClirArray[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "CLIRListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleGetCLIRResult: tmpClirArray[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, p1, v5

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    iget v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->msgID:I

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CLIRSetting;->showDialog(I)V

    return-void

    :cond_1
    aget v2, p1, v5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "CLIRListPreference"

    const-string/jumbo v3, "handleGetCLIRResult: CLIR_SUPPRESSION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x190

    iput v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->msgID:I

    goto :goto_2

    :pswitch_3
    const-string/jumbo v2, "CLIRListPreference"

    const-string/jumbo v3, "handleGetCLIRResult: CLIR_INVOCATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->msgID:I

    goto :goto_2

    :pswitch_4
    const-string/jumbo v2, "CLIRListPreference"

    const-string/jumbo v3, "handleGetCLIRResult: CLIR_DEFAULT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x258

    iput v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->msgID:I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "CLIRListPreference"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CLIRSetting;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/CLIRSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/CLIRSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/nwservice/CLIRSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/nwservice/CLIRSetting;->handler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/nwservice/CLIRSetting;->getVoiceMailSettingList()V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CLIRSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    const/4 v7, 0x0

    const v10, 0x7f0d032a

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput p1, p0, Lcom/android/phone/nwservice/CLIRSetting;->msgID:I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    return-object v7

    :sswitch_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v6, 0x7f0d0b0b

    invoke-virtual {p0, v6}, Lcom/android/phone/nwservice/CLIRSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v1

    :sswitch_1
    iget-object v6, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    if-eqz v6, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "CLIRSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "- onCreateDialog : id -  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_1

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/phone/nwservice/CLIRSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CLIRSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/nwservice/CLIRSetting$2;

    invoke-direct {v6, p0}, Lcom/android/phone/nwservice/CLIRSetting$2;-><init>(Lcom/android/phone/nwservice/CLIRSetting;)V

    const v7, 0x7f0d0af0

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/nwservice/CLIRSetting$3;

    invoke-direct {v6, p0}, Lcom/android/phone/nwservice/CLIRSetting$3;-><init>(Lcom/android/phone/nwservice/CLIRSetting;)V

    const v7, 0x7f0d0af1

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/nwservice/CLIRSetting$4;

    invoke-direct {v6, p0}, Lcom/android/phone/nwservice/CLIRSetting$4;-><init>(Lcom/android/phone/nwservice/CLIRSetting;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :sswitch_2
    const v5, 0x7f0d0ae3

    const v4, 0x7f0d0b6e

    const-string/jumbo v6, "CLIRSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VOICEMAIL_ACTIVATE_DIALOG: number -  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    const v5, 0x7f0d0ae5

    const v4, 0x7f0d0b6f

    const-string/jumbo v6, "CLIRSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VOICEMAIL_ACTIVATE_DIALOG: number -  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_2

    :goto_1
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v10}, Lcom/android/phone/nwservice/CLIRSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/phone/nwservice/CLIRSetting$5;

    invoke-direct {v7, p0}, Lcom/android/phone/nwservice/CLIRSetting$5;-><init>(Lcom/android/phone/nwservice/CLIRSetting;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :sswitch_5
    const v5, 0x7f0d0ae6

    const v4, 0x7f0d0b70

    const-string/jumbo v6, "CLIRSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VOICEMAIL_ACTIVATE_DIALOG: number -  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_6
    const v5, 0x7f0d0ae6

    const v4, 0x7f0d0b71

    const-string/jumbo v6, "CLIRSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VOICEMAIL_ACTIVATE_DIALOG: number -  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_7
    const v5, 0x7f0d0ae6

    const v4, 0x7f0d036b

    const-string/jumbo v6, "CLIRSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "VOICEMAIL_ACTIVATE_DIALOG: number -  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_8
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0392

    const-string/jumbo v6, "CLIRSetting"

    const-string/jumbo v7, "Exception Error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v10}, Lcom/android/phone/nwservice/CLIRSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/phone/nwservice/CLIRSetting$6;

    invoke-direct {v7, p0}, Lcom/android/phone/nwservice/CLIRSetting$6;-><init>(Lcom/android/phone/nwservice/CLIRSetting;)V

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_1
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_8
        0x320 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x190 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x258 -> :sswitch_7
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CLIRSetting;->getFragmentManager()Landroid/app/FragmentManager;

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
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CLIRSetting;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/nwservice/CLIRSetting;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CLIRListPreference"

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

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->mIsForeground:Z

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "CLIRListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceClick: position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    const-string/jumbo v0, "*148*2*#"

    iput-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/nwservice/CLIRSetting;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "*148*1*#"

    iput-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->number:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/nwservice/CLIRSetting;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/nwservice/CLIRSetting;->showDialog(I)V

    iget-object v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/CLIRSetting;->mHandler:Lcom/android/phone/nwservice/CLIRSetting$MyHandler;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/phone/nwservice/CLIRSetting$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/nwservice/CLIRSetting;->mIsForeground:Z

    return-void
.end method
