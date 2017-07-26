.class public Lcom/android/phone/callsettings/AboutPhoneActivity;
.super Landroid/app/Activity;
.source "AboutPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;
    }
.end annotation


# static fields
.field private static final INCALLUI_PACKAGE_NAME:Ljava/lang/String;


# instance fields
.field private mAvailableText:Landroid/widget/TextView;

.field private mCheckForUpdates:Lcom/android/phone/CheckForUpdates;

.field private mCheckingStatus:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUpdateButton:Landroid/widget/Button;

.field private mUpdateTask:Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;

.field private mVersionText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/AboutPhoneActivity;)Lcom/android/phone/CheckForUpdates;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mCheckForUpdates:Lcom/android/phone/CheckForUpdates;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/AboutPhoneActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->checkForUpdatesCompleted(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string/jumbo v2, "com.android.incallui"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/AboutPhoneActivity;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateTask:Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mCheckingStatus:I

    return-void
.end method

.method private checkForUpdatesCompleted(I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "AboutPhoneActivity"

    const-string/jumbo v1, "checkForUpdatesCompleted"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mCheckingStatus:I

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AboutPhoneActivity;->setCheckingStatus(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mVersionText:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/callsettings/AboutPhoneActivity;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d0d99

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mAvailableText:Landroid/widget/TextView;

    const v1, 0x7f0d0d9b

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mAvailableText:Landroid/widget/TextView;

    const v1, 0x7f0d0d9a

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mAvailableText:Landroid/widget/TextView;

    const v1, 0x7f0d0da5

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateButton:Landroid/widget/Button;

    const v1, 0x7f0d0d9e

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkForUpdatesNotCompleted()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "AboutPhoneActivity"

    const-string/jumbo v1, "checkForUpdatesNotCompleted"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AboutPhoneActivity;->setCheckingStatus(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateTask:Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateTask:Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;-><init>(Lcom/android/phone/callsettings/AboutPhoneActivity;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateTask:Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateTask:Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private clearBadge()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/CheckForUpdates;->setBadgeState(Landroid/content/Context;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.contacts.action.CLEAR_INCALL_APP_UPDATE_BADGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "AboutPhoneActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVersionName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initLayout()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const v1, 0x7f100016

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mVersionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mVersionText:Landroid/widget/TextView;

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/android/phone/callsettings/AboutPhoneActivity;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const v4, 0x7f0d0d99

    invoke-virtual {p0, v4, v3}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f100017

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f100018

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mAvailableText:Landroid/widget/TextView;

    const v1, 0x7f100019

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f10001a

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<u>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0d0da2

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "</u>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->isOpenSourceClassEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private isOpenSourceClassEnabled()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/phone/callsettings/AboutPhoneActivity;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v5, "com.android.incallui.OpenSourceLicenseActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string/jumbo v4, "AboutPhoneActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[isOpenSourceClassEnabled] - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setCheckingStatus(Z)V
    .locals 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string/jumbo v0, "AboutPhoneActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCheckingStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mAvailableText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v3, "AboutPhoneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v3, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mCheckingStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CheckForUpdates;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->checkForUpdatesNotCompleted()V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v4, 0x7f0d0da4

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CheckForUpdates;->jumpToSamsungApps(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/phone/callsettings/AboutPhoneActivity;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v4, "com.android.incallui.OpenSourceLicenseActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/phone/callsettings/AboutPhoneActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AboutPhoneActivity"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "AboutPhoneActivity"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "status"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mCheckingStatus:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0d0314

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0d0d98

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->initLayout()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->clearBadge()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "AboutPhoneActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateTask:Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mUpdateTask:Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/AboutPhoneActivity$CheckForUpdatesTask;->cancel(Z)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "AboutPhoneActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CheckForUpdates;->getInstance(Landroid/content/Context;)Lcom/android/phone/CheckForUpdates;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mCheckForUpdates:Lcom/android/phone/CheckForUpdates;

    invoke-direct {p0}, Lcom/android/phone/callsettings/AboutPhoneActivity;->checkForUpdatesNotCompleted()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "status"

    iget v1, p0, Lcom/android/phone/callsettings/AboutPhoneActivity;->mCheckingStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
