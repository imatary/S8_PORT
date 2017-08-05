.class public Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;
.super Landroid/app/Activity;
.source "TencentFunctionsLegalInfoDialog.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private PHONE_NUMBER_LOCATOR:I

.field private SPAM_CALL:I

.field private TENCENT_FUNCTIONS:I

.field createDialog:Landroid/app/AlertDialog;

.field mAutoUpdateCheckbox:Landroid/widget/CheckBox;

.field mContentText:Landroid/widget/TextView;

.field mDoNotShowCheckbox:Landroid/widget/CheckBox;

.field mNM:Lcom/android/phone/NotificationMgr;

.field mView:Landroid/view/View;

.field private popupType:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->popupType:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->addSpamcallLegalInfoDisagreeTimes()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->addTencentPNLLegalInfoDisagreeTimes()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->spamCallPopupPositiveClick()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->tencentPNLPopupPositiveClick()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->TENCENT_FUNCTIONS:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->SPAM_CALL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->PHONE_NUMBER_LOCATOR:I

    iget v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->TENCENT_FUNCTIONS:I

    iput v0, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->popupType:I

    return-void
.end method

.method private addSpamcallLegalInfoDisagreeTimes()V
    .locals 3

    const-string/jumbo v1, "spamcall_legal_info_disagree_times"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "spamcall_legal_info_disagree_times"

    invoke-static {v1, v0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method private addTencentPNLLegalInfoDisagreeTimes()V
    .locals 3

    const-string/jumbo v1, "tencent_pnl_legal_info_disagree_times"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "tencent_pnl_legal_info_disagree_times"

    invoke-static {v1, v0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method private enableTencentPNLService(Z)V
    .locals 2

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private getContentText()V
    .locals 9

    iget-object v6, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getPopupText()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "TencentFunctionsLegalInfoDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getContentText contentString : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v6, 0x7f0a001e

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const v6, 0x7f0d0c95

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :try_start_0
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/URLSpan;

    const-string/jumbo v7, "http://www.qq.com/privacy.htm"

    invoke-direct {v6, v7}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    const/16 v8, 0x21

    invoke-virtual {v4, v6, v3, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    new-instance v7, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$1;

    invoke-direct {v7, p0, v0, v3, v5}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$1;-><init>(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;Landroid/text/style/BackgroundColorSpan;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getPopupText()Ljava/lang/String;
    .locals 8

    const v7, 0x7f0d06f7

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v1, 0x7f0d0c95

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->popupType:I

    iget v2, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->SPAM_CALL:I

    if-ne v1, v2, :cond_0

    const v1, 0x7f0d0c51

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->popupType:I

    iget v2, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->PHONE_NUMBER_LOCATOR:I

    if-ne v1, v2, :cond_1

    const v1, 0x7f0d070a

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const v1, 0x7f0d070d

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0d0c4e

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initView()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "TencentFunctionsLegalInfoDialog"

    const-string/jumbo v2, "initView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0400f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f100159

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getContentText()V

    iget-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f100297

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f100298

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private saveTencentPNLAutoUpdate(Z)V
    .locals 3

    const-string/jumbo v1, "pnlAutoUpdate"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "autoUpdate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveTencentPNLUdateType(I)V
    .locals 3

    const-string/jumbo v1, "pnlAutoUpdate"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "updateType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveTencentPNLWLANOnly(Z)V
    .locals 3

    const-string/jumbo v1, "pnlAutoUpdate"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "WLANOnly"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showLegalInfoDialog()V
    .locals 5

    const v4, 0x7f0a002d

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0c91

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$2;-><init>(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V

    const v3, 0x7f0d0c93

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$3;-><init>(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V

    const v3, 0x7f0d0c94

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$4;-><init>(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog$5;-><init>(Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private spamCallPopupPositiveClick()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spam_call_enable"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "spamcall_legal_info_agree"

    invoke-static {v2, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spam_call_auto_update"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "spam_calls_dialog_do_not_show"

    invoke-static {v2, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "action_auto_update_broadcast"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "spam_call_auto_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelSpamCallsFilterNotification()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tencentPNLPopupPositiveClick()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v4, "number_region_activation_preference"

    invoke-static {v4, v5}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v4, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "tencent_pnl_dialog_do_not_show"

    invoke-static {v4, v5}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v4, "pnlAutoUpdate"

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "autoUpdate"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "WLANOnly"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->saveTencentPNLUdateType(I)V

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->saveTencentPNLAutoUpdate(Z)V

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->enableTencentPNLService(Z)V

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->saveTencentPNLWLANOnly(Z)V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->cancelTencentPNLFilterNotification()V

    :cond_3
    return-void

    :cond_4
    if-eqz v2, :cond_2

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->saveTencentPNLAutoUpdate(Z)V

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->enableTencentPNLService(Z)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "TencentFunctionsLegalInfoDialog"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tencent_functions_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->popupType:I

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "spam_call_menu"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v3, "IUCN"

    invoke-static {v1, v2, v3}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->initView()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;->showLegalInfoDialog()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TencentFunctionsLegalInfoDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance() : Illegal State Exception Occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
