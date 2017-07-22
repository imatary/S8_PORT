.class public Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;
.super Landroid/app/Activity;
.source "SmartCallLegalInfoDialog.java"


# static fields
.field private static final DBG:Z


# instance fields
.field createDialog:Landroid/app/AlertDialog;

.field mAutoUpdateCheckbox:Landroid/widget/CheckBox;

.field mContentText:Landroid/widget/TextView;

.field mDoNotShowCheckbox:Landroid/widget/CheckBox;

.field mNM:Lcom/android/phone/NotificationMgr;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getContentText()V
    .locals 9

    iget-object v6, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    if-nez v6, :cond_0

    return-void

    :cond_0
    const v6, 0x7f0d0be6

    invoke-virtual {p0, v6}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "SmartCallLegalInfoDialog"

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

    const v6, 0x7f0d0c24

    invoke-virtual {p0, v6}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getString(I)Ljava/lang/String;

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

    iget-object v6, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    new-instance v7, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;

    invoke-direct {v7, p0, v0, v3, v5}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$1;-><init>(Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;Landroid/text/style/BackgroundColorSpan;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "SmartCallLegalInfoDialog"

    const-string/jumbo v2, "initView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0400f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f100159

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mContentText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getContentText()V

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f100294

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mAutoUpdateCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mView:Landroid/view/View;

    const v2, 0x7f100295

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mDoNotShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private showLegalInfoDialog()V
    .locals 5

    const v4, 0x7f0a002d

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0c20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;

    invoke-direct {v2, p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$2;-><init>(Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;)V

    const v3, 0x7f0d0c22

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$3;

    invoke-direct {v2, p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$3;-><init>(Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;)V

    const v3, 0x7f0d0c23

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$4;

    invoke-direct {v2, p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$4;-><init>(Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$5;

    invoke-direct {v2, p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog$5;-><init>(Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SmartCallLegalInfoDialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "spam_call_menu"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v2, "IUCN"

    invoke-static {v0, v1, v2}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->initView()V

    invoke-direct {p0}, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->showLegalInfoDialog()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "SmartCallLegalInfoDialog"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SmartCallLegalInfoDialog;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
