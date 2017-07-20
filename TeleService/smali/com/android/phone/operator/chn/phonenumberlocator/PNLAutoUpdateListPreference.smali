.class public Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;
.super Landroid/preference/ListPreference;
.source "PNLAutoUpdateListPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/content/DialogInterface;

.field private mSuperClickedDialogEntryIndex:I

.field private mTempDialogEntryIndex:I

.field private writeFlag:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mTempDialogEntryIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mTempDialogEntryIndex:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->readChargesNotificationPrefrence()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->showChargesNotificationDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeChargesNotificationPrefrence()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "PNLAutoUpdateListPreference"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private readChargesNotificationPrefrence()Z
    .locals 4

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "charges_notification_key2"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readChargesNotificationPrefrence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->log(Ljava/lang/String;)V

    return v1
.end method

.method private showChargesNotificationDialog()V
    .locals 13

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z

    const/4 v8, -0x1

    const/4 v1, -0x1

    iget-object v9, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v9, 0x7f040070

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v9, 0x7f100159

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f10009a

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v9, "WLANOnly"

    invoke-interface {v7, v9, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v9, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$2;

    invoke-direct {v9, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$2;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-nez v5, :cond_0

    const v8, 0x7f0d06ad

    const v1, 0x7f0d06ac

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    const v9, 0x7f0d06f3

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;

    invoke-direct {v10, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$3;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    const v11, 0x7f0d050d

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;

    invoke-direct {v10, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v8, 0x7f0d06b2

    const v1, 0x7f0d06b3

    goto :goto_0
.end method

.method private writeChargesNotificationPrefrence()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->writeFlag:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "writeChargesNotificationPrefrence true"

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "charges_notification_key2"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleIACommand(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "PNLAutoUpdateListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleIACommand command...param :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :cond_0
    const-string/jumbo v2, "No auto updates"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iput v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "Every month"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "Every 3 months"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "Every 6 months"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    aget-object v2, v0, v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I

    new-instance v2, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
