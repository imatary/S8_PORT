.class public Lcom/android/phone/nwservice/CallforwardingPay;
.super Landroid/preference/PreferenceActivity;
.source "CallforwardingPay.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mCallforwardingPay1Pref:Landroid/preference/PreferenceScreen;

.field private mCallforwardingPay2Pref:Landroid/preference/PreferenceScreen;

.field private mCallforwardingPay3Pref:Landroid/preference/PreferenceScreen;

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


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/nwservice/CallforwardingPay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/nwservice/CallforwardingPay;->procDialCommand(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mPreference:Ljava/util/ArrayList;

    return-void
.end method

.method private getCallforwardingPayList()V
    .locals 4

    const-string/jumbo v2, "callforwarding_pay_active_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallforwardingPay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mCallforwardingPay1Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "callforwarding_pay_deactive_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallforwardingPay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mCallforwardingPay2Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "callforwarding_pay_setting_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallforwardingPay;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mCallforwardingPay3Pref:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mCallforwardingPay1Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mCallforwardingPay2Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mCallforwardingPay3Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mPreference:Ljava/util/ArrayList;

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

.method private procDialCommand(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallforwardingPay;->showDialog(I)V

    const-string/jumbo v2, "CallforwardingPay"

    const-string/jumbo v3, "skip USSD request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/nwservice/CallforwardingPay;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showAlertDialogActivate()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b7b

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0b88

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d050c

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nwservice/CallforwardingPay$1;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/CallforwardingPay$1;-><init>(Lcom/android/phone/nwservice/CallforwardingPay;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d050d

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertDialogDeactivate()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b7b

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0b89

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d050c

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nwservice/CallforwardingPay$2;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/CallforwardingPay$2;-><init>(Lcom/android/phone/nwservice/CallforwardingPay;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d050d

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAlertDialogSetting()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0b7b

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0b8a

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d050c

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/nwservice/CallforwardingPay$3;

    invoke-direct {v2, p0}, Lcom/android/phone/nwservice/CallforwardingPay$3;-><init>(Lcom/android/phone/nwservice/CallforwardingPay;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d050d

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "CallforwardingPay"

    const-string/jumbo v2, "CallforwardingPay onCreate - IN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallforwardingPay;->getCallforwardingPayList()V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallforwardingPay;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mTelMan:Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "CallforwardingPay"

    const-string/jumbo v2, "CallforwardingPay onCreate - OUT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/nwservice/CallforwardingPay;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v3, :cond_2

    :cond_1
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->showDialog(I)V

    const-string/jumbo v1, "NetworkService"

    const-string/jumbo v2, "skip set or get CallWaiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "##OSK## "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/android/phone/nwservice/CallforwardingPay;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "displayDialog() , id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x12c

    if-eq p1, v4, :cond_0

    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1

    :cond_0
    const v3, 0x7f0d032d

    sparse-switch p1, :sswitch_data_0

    const v2, 0x7f0d0332

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/CallforwardingPay;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/CallforwardingPay;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d050c

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/CallforwardingPay;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/phone/nwservice/CallforwardingPay$4;

    invoke-direct {v5, p0}, Lcom/android/phone/nwservice/CallforwardingPay$4;-><init>(Lcom/android/phone/nwservice/CallforwardingPay;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v4, 0x320

    if-eq p1, v4, :cond_0

    const/16 v4, 0x2bc

    if-eq p1, v4, :cond_0

    const/4 v4, 0x0

    return-object v4

    :sswitch_0
    const v2, 0x7f0d0331

    goto :goto_0

    :sswitch_1
    const v2, 0x7f0d0333

    goto :goto_0

    :sswitch_2
    const v2, 0x7f0d05b6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x2bc -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallforwardingPay;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.nwservice.NetworkServiceRoaming"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/CallforwardingPay;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/nwservice/CallforwardingPay;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CallforwardingPay"

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
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    const-string/jumbo v1, "CallforwardingPay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceClick: position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallforwardingPay;->showAlertDialogActivate()V

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-ne v0, v4, :cond_2

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallforwardingPay;->showAlertDialogDeactivate()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/nwservice/CallforwardingPay;->showAlertDialogSetting()V

    goto :goto_0
.end method
