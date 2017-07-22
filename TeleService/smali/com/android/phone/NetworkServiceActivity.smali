.class public Lcom/android/phone/NetworkServiceActivity;
.super Landroid/preference/PreferenceActivity;
.source "NetworkServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkServiceActivity$1;
    }
.end annotation


# instance fields
.field private mAuCustomer:Landroid/preference/PreferenceScreen;

.field private mCallerID:Landroid/preference/CheckBoxPreference;

.field mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/NetworkServiceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NetworkServiceActivity;->AlertDialogActiveAuCustomer()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/NetworkServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkServiceActivity$1;-><init>(Lcom/android/phone/NetworkServiceActivity;)V

    iput-object v0, p0, Lcom/android/phone/NetworkServiceActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private AlertDialogActiveAuCustomer()V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0ba5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/NetworkServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "157"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0d0b9d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkServiceActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkServiceActivity$2;-><init>(Lcom/android/phone/NetworkServiceActivity;)V

    const v3, 0x7f0d0639

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/NetworkServiceActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkServiceActivity$3;-><init>(Lcom/android/phone/NetworkServiceActivity;)V

    const v3, 0x7f0d063a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkServiceActivity;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "button_clir_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/NetworkServiceActivity;->mCallerID:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "au_customer_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkServiceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/NetworkServiceActivity;->mAuCustomer:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/NetworkServiceActivity;->mAuCustomer:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/NetworkServiceActivity;->mclicklistener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/NetworkServiceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
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

    const-string/jumbo v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkServiceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkServiceActivity;->finish()V

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

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/NetworkServiceActivity;->mCallerID:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/NetworkServiceActivity;->mCallerID:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "button_clir_key"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "button_clir_key"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method
