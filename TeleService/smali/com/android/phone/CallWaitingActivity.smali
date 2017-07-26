.class public Lcom/android/phone/CallWaitingActivity;
.super Landroid/preference/PreferenceActivity;
.source "CallWaitingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallWaitingActivity$1;
    }
.end annotation


# instance fields
.field private mActivity_service:Landroid/preference/PreferenceScreen;

.field private mDeactivity_service:Landroid/preference/PreferenceScreen;

.field mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/CallWaitingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallWaitingActivity;->AlertDialogCallWaitingActivate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/CallWaitingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallWaitingActivity;->AlertDialogCallWaitingDeactivate()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/CallWaitingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallWaitingActivity$1;-><init>(Lcom/android/phone/CallWaitingActivity;)V

    iput-object v0, p0, Lcom/android/phone/CallWaitingActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private AlertDialogCallWaitingActivate()V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0c03

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "1451"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0c04

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallWaitingActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallWaitingActivity$2;-><init>(Lcom/android/phone/CallWaitingActivity;)V

    const v3, 0x7f0d069d

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallWaitingActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/CallWaitingActivity$3;-><init>(Lcom/android/phone/CallWaitingActivity;)V

    const v3, 0x7f0d069e

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private AlertDialogCallWaitingDeactivate()V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0c03

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "1450"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0c04

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallWaitingActivity$4;

    invoke-direct {v2, p0}, Lcom/android/phone/CallWaitingActivity$4;-><init>(Lcom/android/phone/CallWaitingActivity;)V

    const v3, 0x7f0d069d

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallWaitingActivity$5;

    invoke-direct {v2, p0}, Lcom/android/phone/CallWaitingActivity$5;-><init>(Lcom/android/phone/CallWaitingActivity;)V

    const v3, 0x7f0d069e

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private init()V
    .locals 2

    const-string/jumbo v0, "activate_service"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallWaitingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallWaitingActivity;->mActivity_service:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/CallWaitingActivity;->mActivity_service:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/CallWaitingActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "deactivate_service"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallWaitingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallWaitingActivity;->mDeactivity_service:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/CallWaitingActivity;->mDeactivity_service:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/CallWaitingActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/android/phone/CallWaitingActivity;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/phone/CallWaitingActivity;->init()V

    invoke-virtual {p0}, Lcom/android/phone/CallWaitingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.NetworkServiceActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallWaitingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallWaitingActivity;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method
