.class public Lcom/android/phone/nwservice/ArrivalCallNetwork;
.super Landroid/preference/PreferenceActivity;
.source "ArrivalCallNetwork.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/nwservice/ArrivalCallNetwork$1;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private mArrivalList1Pref:Landroid/preference/PreferenceScreen;

.field private mArrivalList2Pref:Landroid/preference/PreferenceScreen;

.field private mArrivalList3Pref:Landroid/preference/PreferenceScreen;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mPreference:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/nwservice/ArrivalCallNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/phone/nwservice/ArrivalCallNetwork$1;-><init>(Lcom/android/phone/nwservice/ArrivalCallNetwork;)V

    iput-object v0, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getArrivalCallNetworkList()V
    .locals 4

    const-string/jumbo v2, "arrival_callnetwork_active_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mArrivalList1Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "arrival_callnetwork_deactive_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mArrivalList2Pref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "arrival_callnetwork_check_pref"

    invoke-virtual {p0, v2}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mArrivalList3Pref:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mArrivalList1Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mArrivalList2Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mArrivalList3Pref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mPreference:Ljava/util/ArrayList;

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
    .locals 5

    const/16 v4, 0x3ed

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->showDialog(I)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    const-string/jumbo v1, "ArrivalCallNetwork"

    const-string/jumbo v2, "skip USSD request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->showDialog(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->showDialog(I)V

    const-string/jumbo v1, "ArrivalCallNetwork"

    const-string/jumbo v2, "CallStateException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->handler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->getArrivalCallNetworkList()V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
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

    const v4, 0x7f0d0aa4

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0

    :sswitch_1
    const v3, 0x7f0d0332

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0d050c

    invoke-virtual {p0, v4}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->getText(I)Ljava/lang/CharSequence;

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

    iget-object v0, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/nwservice/ArrivalCallNetwork;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.nwservice.NetworkService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->finish()V

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    const-string/jumbo v1, "ArrivalCallNetwork"

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

    if-nez v0, :cond_0

    const-string/jumbo v1, "*146#"

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    :goto_0
    return v4

    :cond_0
    if-ne v0, v4, :cond_1

    const-string/jumbo v1, "#146#"

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "*#146#"

    invoke-direct {p0, v1}, Lcom/android/phone/nwservice/ArrivalCallNetwork;->procUSSDCommand(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsJpn;->setCheckCurrentSetting(Z)V

    goto :goto_0
.end method
