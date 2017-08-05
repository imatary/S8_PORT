.class public Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "PNLWLANOnlySwitchPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private writeFlag:Z


# direct methods
.method static synthetic -set0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeFlag:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->userConfirmClick()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeChargesNotificationPrefrence()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeFlag:Z

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private readChargesNotificationPrefrence()Z
    .locals 4

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "charges_notification_key3"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private showChargesNotificationDialog()V
    .locals 9

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f040070

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f100159

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f10009a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-boolean v7, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeFlag:Z

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v5, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$1;

    invoke-direct {v5, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$1;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v5, 0x7f0d0757

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d06f7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f0d070f

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d070e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$2;

    invoke-direct {v6, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$2;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V

    const v7, 0x7f0d056d

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$3;

    invoke-direct {v6, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference$3;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;)V

    const v7, 0x7f0d056c

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private userConfirmClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    return-void
.end method

.method private writeChargesNotificationPrefrence()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->writeFlag:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "charges_notification_key3"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string/jumbo v0, "support_charges_notification_in_pnl"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->readChargesNotificationPrefrence()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->showChargesNotificationDialog()V

    goto :goto_0
.end method
