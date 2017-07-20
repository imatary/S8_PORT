.class public Lcom/android/phone/FlatRateAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FlatRateAlertActivity.java"


# static fields
.field protected static mCheckBox:Landroid/widget/CheckBox;

.field protected static mRadioGroup:Landroid/widget/RadioGroup;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mFlatRateDialog:Landroid/app/AlertDialog$Builder;

.field private radioOption1:Landroid/widget/RadioButton;


# direct methods
.method static synthetic -get0(Lcom/android/phone/FlatRateAlertActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/FlatRateAlertActivity;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/FlatRateAlertActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/FlatRateAlertActivity;->setSkipMessage(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    return-void
.end method

.method private setSkipMessage(Ljava/lang/String;Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mobile_network_popup_shared_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7}, Lcom/android/phone/FlatRateAlertActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0e004e

    invoke-direct {v0, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f040063

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f10012d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    const-string/jumbo v5, "bootup_data_tariff_rate_popup"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0d0703

    invoke-virtual {p0, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0704

    invoke-virtual {p0, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f10012f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    sput-object v5, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    const v5, 0x7f100130

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->radioOption1:Landroid/widget/RadioButton;

    sget-object v5, Lcom/android/phone/FlatRateAlertActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v8}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mFlatRateDialog:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mFlatRateDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/FlatRateAlertActivity$1;

    invoke-direct {v6, p0}, Lcom/android/phone/FlatRateAlertActivity$1;-><init>(Lcom/android/phone/FlatRateAlertActivity;)V

    const v7, 0x7f0d02ca

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mFlatRateDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const-string/jumbo v5, "bootup_data_connection_popup"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0d06ff

    invoke-virtual {p0, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f0d0700

    invoke-virtual {p0, v6}, Lcom/android/phone/FlatRateAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0d0701

    invoke-virtual {p0, v6, v5}, Lcom/android/phone/FlatRateAlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f10012e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    sput-object v5, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    sget-object v5, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    sget-object v5, Lcom/android/phone/FlatRateAlertActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/FlatRateAlertActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/phone/FlatRateAlertActivity;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
