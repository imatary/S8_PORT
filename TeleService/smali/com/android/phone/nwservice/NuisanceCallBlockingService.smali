.class public Lcom/android/phone/nwservice/NuisanceCallBlockingService;
.super Landroid/preference/PreferenceActivity;
.source "NuisanceCallBlockingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nwservice/NuisanceCallBlockingService$1;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private mNuisanceList1Pref:Landroid/preference/PreferenceScreen;

.field private mNuisanceList2Pref:Landroid/preference/PreferenceScreen;

.field private mNuisanceList3Pref:Landroid/preference/PreferenceScreen;

.field private mNuisanceList4Pref:Landroid/preference/PreferenceScreen;

.field private mNuisanceList5Pref:Landroid/preference/PreferenceScreen;

.field private mNuisanceList6Pref:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/nwservice/NuisanceCallBlockingService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->procUSSDCommand(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/nwservice/NuisanceCallBlockingService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService$1;-><init>(Lcom/android/phone/nwservice/NuisanceCallBlockingService;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getNuisanceSettingList()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "nuisance_register_caller_pref"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList1Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "nuisance_register_selected_number_pref"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList2Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "nuisance_delete_all_pref"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList3Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "nuisance_delete_last_pref"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList4Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "nuisance_check_pref"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList5Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "nuisance_detailed_setting_pref"

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList6Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList1Pref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList1Pref:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0d0b86

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList2Pref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList2Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList2Pref:Landroid/preference/PreferenceScreen;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList3Pref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList3Pref:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0d0b8a

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList4Pref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList4Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList4Pref:Landroid/preference/PreferenceScreen;

    :cond_3
    return-void
.end method

.method private procUSSDCommand(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x3ed

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    const-string/jumbo v1, "NuisanceCallBlockingService"

    const-string/jumbo v2, "skip USSD request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->showDialog(I)V

    const-string/jumbo v1, "NuisanceCallBlockingService"

    const-string/jumbo v2, "CallStateException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private showAlertDialogAppNotInstalled(I)V
    .locals 3

    const-string/jumbo v1, "NuisanceCallBlockingService"

    const-string/jumbo v2, "showAlertDialogAppNotInstalled - IN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nwservice/NuisanceCallBlockingService$2;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService$2;-><init>(Lcom/android/phone/nwservice/NuisanceCallBlockingService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const-string/jumbo v1, "NuisanceCallBlockingService"

    const-string/jumbo v2, "showAlertDialogAppNotInstalled - OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showCheckDialog(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez p1, :cond_0

    const v1, 0x7f0d0b90

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x7f0d056c

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nwservice/NuisanceCallBlockingService$3;

    invoke-direct {v2, p0, p2}, Lcom/android/phone/nwservice/NuisanceCallBlockingService$3;-><init>(Lcom/android/phone/nwservice/NuisanceCallBlockingService;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d056d

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const v1, 0x7f0d0b93

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0b94

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showDeleteDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b8a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0b8b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/nwservice/NuisanceCallBlockingService$4;

    invoke-direct {v1, p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService$4;-><init>(Lcom/android/phone/nwservice/NuisanceCallBlockingService;)V

    const v2, 0x7f0d0b9a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d056d

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nwservice/NuisanceCallBlockingService$5;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService$5;-><init>(Lcom/android/phone/nwservice/NuisanceCallBlockingService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/nwservice/NuisanceCallBlockingService$6;

    invoke-direct {v1, p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService$6;-><init>(Lcom/android/phone/nwservice/NuisanceCallBlockingService;)V

    const v2, 0x7f0d0b99

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/nwservice/NuisanceCallBlockingService$7;

    invoke-direct {v1, p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService$7;-><init>(Lcom/android/phone/nwservice/NuisanceCallBlockingService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "NuisanceCallBlockingService"

    const-string/jumbo v2, "onCreate - IN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070048

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->handler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getNuisanceSettingList()V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string/jumbo v1, "NuisanceCallBlockingService"

    const-string/jumbo v2, "onCreate - OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v4

    return-object v4

    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v4, 0x7f0d0b0b

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0

    :sswitch_1
    const v3, 0x7f0d0392

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d056c

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ed -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getFragmentManager()Landroid/app/FragmentManager;

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
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "NuisanceCallBlockingService"

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

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList1Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".BlockingNuisanceNumber"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "NuisanceCallBlockingService"

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
    iget-object v3, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList2Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".BlockingNuisanceNumber"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v6

    :catch_1
    move-exception v0

    const-string/jumbo v3, "NuisanceCallBlockingService"

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

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList3Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->showDeleteDialog()V

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList4Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_3

    const-string/jumbo v3, "#122*2#"

    const/4 v4, 0x2

    invoke-direct {p0, v4, v3}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->showCheckDialog(ILjava/lang/String;)V

    return v6

    :cond_3
    iget-object v3, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList5Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_4

    const-string/jumbo v3, "*#122*1#"

    invoke-direct {p0, v3}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    return v6

    :cond_4
    iget-object v3, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->mNuisanceList6Pref:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_5

    const-string/jumbo v3, "https://support2.smt.docomo.ne.jp/MeiwakuCusconWeb/meiwaku2/login/auth.htm"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    return v4

    :catch_2
    move-exception v0

    const v3, 0x7f0d0ba8

    invoke-direct {p0, v3}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->showAlertDialogAppNotInstalled(I)V

    return v4
.end method
