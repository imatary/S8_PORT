.class public Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl0;,
        Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl1;,
        Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl2;,
        Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    }
.end annotation


# static fields
.field private static mDialogContext:Landroid/content/Context;

.field private static mNeedToReCreateDialog:Z

.field private static sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;


# instance fields
.field private mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;


# direct methods
.method static synthetic -com_android_phone_mobilenetworks_MobileNetworksDialogManager_lambda$1(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    return-void
.end method

.method static synthetic -com_android_phone_mobilenetworks_MobileNetworksDialogManager_lambda$2(Landroid/preference/TwoStatePreference;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic -com_android_phone_mobilenetworks_MobileNetworksDialogManager_lambda$3(Landroid/preference/TwoStatePreference;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setDataSelectionPopupIsSetKor(Z)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/RadioGroup;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setRadioGroupEnable(Landroid/widget/RadioGroup;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    const v2, 0x7f0e004e

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->getInstance()Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/mobilenetworks/controller/DesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    return-void
.end method

.method private getDataSelectionPopupIsSetKor()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mobile_data_question"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataSelectionPopupMsgByCarrier()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0d075a

    :goto_0
    sget-object v1, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0d0759

    goto :goto_0

    :cond_1
    const v0, 0x7f0d0758

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;
    .locals 2

    sget-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasShownEver(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "mobile_network_popup_shared_prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "MobileNetworksDialogManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final notify3gWarning(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v1, ""

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0e004e

    invoke-direct {v0, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v3, "MobileNetworksDialogManager"

    const-string/jumbo v4, "notify3gWarning Toast Display"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f0d0755

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d0753

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    const v3, 0x7f0d074f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setDataSelectionPopupIsSetKor(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data_question"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setRadioGroupEnable(Landroid/widget/RadioGroup;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->clearCheck()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static showBootupDataSelectionPopupTariff(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/FlatRateAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "MobileNetworksDialogManager"

    const-string/jumbo v2, "showBootupDataSelectionPopupTariff : Intent created = FlatRateAlertActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showBootupDataSelectionPopupXEO(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v2, "bootup_data_connection_popup"

    invoke-static {p0, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->hasShownEver(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "MobileNetworksDialogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showBootupDataSelectionPopupXEO : BOOTUP_DATA_CONNECTION_POPUP, skipMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FlatRateAlertActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "MobileNetworksDialogManager"

    const-string/jumbo v3, "showBootupDataSelectionPopupXEO : Intent created = FlatRateAlertActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final showCarrierLockWarningDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 5

    new-instance v2, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$13;

    invoke-direct {v2, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$13;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d063c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0750

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d07d1

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d02e9

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-object v1
.end method

.method public static final showKorOpenRoamingDataSelectionPopUp(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 9

    const/4 v6, 0x0

    const-string/jumbo v7, "MobileNetworksDialogManager"

    const-string/jumbo v8, "showKorOpenRoamingDataSelectionPopUp"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v7, 0x7f04007c

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f100176

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    new-instance v4, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;

    invoke-direct {v4, v3, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;-><init>(Landroid/widget/Switch;Landroid/content/Context;)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0d076b

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d0760

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d0761

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkRoaming()Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0

    :cond_0
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static showRoamingDataSelectionPopUpSKT()Landroid/app/AlertDialog;
    .locals 16

    const/4 v15, 0x0

    const v13, 0x7f1000ac

    const/4 v14, 0x0

    const-string/jumbo v11, "MobileNetworksDialogManager"

    const-string/jumbo v12, "showRoamingDataSelectionPopUpSKT"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0400eb

    invoke-virtual {v4, v11, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0981

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f100288

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v11, 0x7f10028a

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    new-instance v12, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;

    invoke-direct {v12, v1, v7, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/content/Context;)V

    const v13, 0x104000a

    invoke-virtual {v11, v13, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d8

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v11, -0x1

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v11, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;

    invoke-direct {v11, v1, v7, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/Button;)V

    invoke-virtual {v1, v11}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v11, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$3;

    invoke-direct {v11, v7, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$3;-><init>(Landroid/widget/RadioGroup;Landroid/widget/Button;)V

    invoke-virtual {v7, v11}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-static {v7, v14}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setRadioGroupEnable(Landroid/widget/RadioGroup;Z)V

    return-object v2
.end method

.method public static showRoamingDataSelectionPopupCommon(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 9

    const v8, 0x7f0d063c

    const v7, 0x7f0d0336

    const v6, 0x7f0d0335

    const/4 v5, 0x0

    const-string/jumbo v3, "MobileNetworksDialogManager"

    const-string/jumbo v4, "showRoamingDataSelectionPopupCommon"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$11;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$11;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "prompt_to_data_roaming"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0752

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0

    :cond_0
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0754

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static showRoamingDataSelectionPopupKTT()Landroid/app/AlertDialog;
    .locals 20

    sget-object v10, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const-string/jumbo v17, "MobileNetworksDialogManager"

    const-string/jumbo v18, "showRoamingDataSelectionPopupKTT"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v17, "layout_inflater"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const v17, 0x7f04007d

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    const v17, 0x7f10017b

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v17, 0x7f100179

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v17, 0x7f100178

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0034

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "#ff"

    const-string/jumbo v19, "#"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v3, v18, v19

    const v19, 0x7f0d0a2c

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0a2b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v12, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$4;

    invoke-direct {v12, v10}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$4;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0d0984

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0d0985

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d8

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    new-instance v13, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;

    invoke-direct {v13, v8, v6, v14}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;-><init>(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V

    invoke-virtual {v8, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-object v9
.end method

.method public static final showRoamingDataSelectionPopupLGT()Landroid/app/AlertDialog;
    .locals 12

    const/4 v11, 0x0

    sget-object v2, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const-string/jumbo v9, "MobileNetworksDialogManager"

    const-string/jumbo v10, "showRoamingDataSelectionPopupLGT"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v9, 0x7f040082

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v9, 0x7f100189

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v9, 0x7f10018b

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$6;

    invoke-direct {v5, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$6;-><init>(Landroid/widget/CheckBox;)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d098c

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    invoke-virtual {v9, v10, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    new-instance v9, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;

    invoke-direct {v9, v1, v8, v6}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Button;)V

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v9, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$8;

    invoke-direct {v9, v1, v8, v6}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$8;-><init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Button;)V

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-object v0
.end method


# virtual methods
.method public dismissIfPossible()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    if-nez v0, :cond_0

    const-string/jumbo v0, "MobileNetworksDialogManager"

    const-string/jumbo v1, "dismissIfPossible: there\'s no dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "MobileNetworksDialogManager"

    const-string/jumbo v1, "dismissIfPossible: there\'s no need to dismiss Dialog, isShowing() : false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->dismiss()V

    return-void
.end method

.method public onDesktopDockConnectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mNeedToReCreateDialog:Z

    const-string/jumbo v0, "MobileNetworksDialogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopModeChanged : mNeedToReCreateDialog - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mNeedToReCreateDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recreateDialogFromContextIfNeeded(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    if-nez v0, :cond_0

    const-string/jumbo v0, "MobileNetworksDialogManager"

    const-string/jumbo v1, "recreateDialogFromContextIfNeeded: there\'s no dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "MobileNetworksDialogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recreateDialogFromContextIfNeeded: there\'s no need to update Dialog, isShowing()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mNeedToReCreateDialog:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "MobileNetworksDialogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recreateDialogFromContextIfNeeded: there\'s no need to update Dialog, mNeedToReCreateDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mNeedToReCreateDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mNeedToReCreateDialog:Z

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->reCreate()V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mWarnDialog:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-virtual {v0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->reCreateFromContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setDataRoaming(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "setDataRoaming"

    invoke-direct {p0, v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v5, "data_roaming_warning_popup"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v9}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    invoke-static {p1, v8}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setDataRoamingEnabledBySoftSim(Landroid/content/Context;Z)V

    const-string/jumbo v5, "data_roaming_without_noti"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "setDataRoaming: DATA_ROAMING_WITHOUT_NOTI"

    invoke-direct {p0, v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v5, "data_roaming_noti_tray"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "national_roaming_mode_menu"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$15;

    invoke-direct {v4, p0, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$15;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/preference/TwoStatePreference;)V

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v5

    sget-object v6, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const-string/jumbo v7, "roaming_warning"

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/StringManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0d038b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "data_roaming_style_for_jpn"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f0d0385

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-virtual {p2, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v5, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-direct {v5, p0, p1, v2, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setCheckBox(Z)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setCancelable(Z)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setOkClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    :cond_5
    :goto_2
    return-void

    :cond_6
    const-string/jumbo v5, "data_roaming_noti_tray"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f0d0389

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-static {v8}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    const-string/jumbo v5, "data_roaming_noti_tray"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "national_roaming_mode_menu"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    goto :goto_2
.end method

.method public setDataRoamingforATT(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v4, "setDataRoamingforATT()"

    invoke-direct {p0, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->log(Ljava/lang/String;)V

    new-instance v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;

    invoke-direct {v3, p0, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/preference/TwoStatePreference;)V

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const v4, 0x1040014

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0d038a

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setOkClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v2

    :goto_0
    return-void

    :cond_0
    invoke-static {v5}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method public setMobileDataEnabledDialog(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V
    .locals 5

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mobile_data_on_waring_popup"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d070f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d0710

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl0;

    invoke-direct {v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl0;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setOkClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    new-instance v4, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl1;

    invoke-direct {v4, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl1;-><init>(Landroid/preference/TwoStatePreference;)V

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setNoClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    new-instance v4, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl2;

    invoke-direct {v4, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$-void_setMobileDataEnabledDialog_android_content_Context_context_android_preference_TwoStatePreference_dataEnableButton_LambdaImpl2;-><init>(Landroid/preference/TwoStatePreference;)V

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v2

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "onPreferenceTreeClick: mButtonDataEnabled true, do not make popup"

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setMobileDataEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "mobile_data_off_waring_popup"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "onPreferenceTreeClick: mButtonDataEnabled, make popup"

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showMobileDataOffDialog(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "onPreferenceTreeClick: mButtonDataEnabled false, do not make popup"

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method public setVolteCall(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/preference/SwitchPreference;)V
    .locals 7

    const v3, 0x7f0d08e0

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0d0bdb

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCUSIM()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d08e1

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d08d9

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%s"

    const v6, 0x7f0d08d6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n\n -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0d0bdc

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setCheckBox(Z)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setOkClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setNoClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v2

    return-void
.end method

.method public showDataSelectionPopUp()V
    .locals 9

    const-string/jumbo v7, "support_do_not_show_again_data_selection_popup"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v7, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const v8, 0x7f0d0756

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->getDataSelectionPopupMsgByCarrier()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$9;

    invoke-direct {v5, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$9;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;)V

    new-instance v4, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$10;

    invoke-direct {v4, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$10;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;)V

    sget-object v7, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const v8, 0x7f0d0760

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const v8, 0x7f0d0761

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v6, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setCheckBox(Z)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->getDataSelectionPopupIsSetKor()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v8, v7, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setSkipCondition(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v7

    invoke-virtual {v7, v3, v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setOkClickListener(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v7

    invoke-virtual {v7, v2, v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setNoClickListener(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public showGlobalNetworkDialogforUSC(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    const-string/jumbo v3, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d088b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0d0885

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setOkClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setNoClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v1

    :cond_0
    return-void
.end method

.method public showMobileDataOffDialog(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V
    .locals 7

    const v5, 0x7f0d0716

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d070f

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0717

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, p2

    const-string/jumbo v5, "ignore_product_type"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0d0718

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v5, "feature_vzw"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "video_call_not_support"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTEForVZW()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0d0714

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string/jumbo v5, "feature_dcm"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "video_call_not_support"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f0d0719

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v5, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    invoke-direct {v5, p0, p1, v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$16;

    invoke-direct {v6, p0, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$16;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/preference/TwoStatePreference;)V

    invoke-virtual {v5, v1, v6}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setOkClickListener(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v5

    new-instance v6, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$17;

    invoke-direct {v6, p0, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$17;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/preference/TwoStatePreference;)V

    invoke-virtual {v5, v6}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setNoClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    return-void

    :cond_3
    const v5, 0x7f0d0713

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public showMobileDataOffDialogWhenBootup()V
    .locals 5

    sget-object v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const v4, 0x7f0d0d1a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const v4, 0x7f0d0d12

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "video_call_not_support"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTEForVZW()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    const v4, 0x7f0d0d1b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$18;

    invoke-direct {v4, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$18;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;)V

    invoke-virtual {v3, v4}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->setOkClickListener(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;->showConfirmDialog()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$MobileNetworkDialog;

    move-result-object v2

    return-void
.end method

.method public showRoamingWarningDialog(ILandroid/preference/ListPreference;)V
    .locals 5

    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->mDialogContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d070e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d070d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$19;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$19;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;I)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$20;

    invoke-direct {v3, p0, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$20;-><init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/preference/ListPreference;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
