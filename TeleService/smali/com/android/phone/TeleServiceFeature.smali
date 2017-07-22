.class public Lcom/android/phone/TeleServiceFeature;
.super Ljava/lang/Object;
.source "TeleServiceFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TeleServiceFeature$Floating;
    }
.end annotation


# static fields
.field private static IncomingBargin_command:I

.field private static final TAG:Ljava/lang/String;

.field private static customerParser:Lcom/android/phone/external/CscParser;

.field private static mBargeInRecognizer:Lcom/samsung/android/speech/SemSpeechRecognizer;

.field private static mContext:Landroid/content/Context;

.field private static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static omcSalesCode:Ljava/lang/String;

.field private static opStyleForVolte:Ljava/lang/String;

.field private static platform:Ljava/lang/String;

.field private static sContactsPackageName:Ljava/lang/String;

.field private static salesCode:Ljava/lang/String;

.field private static scafe_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-class v0, Lcom/android/phone/TeleServiceFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/TeleServiceFeature;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/android/phone/TeleServiceFeature;->customerParser:Lcom/android/phone/external/CscParser;

    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/TeleServiceFeature;->platform:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/TeleServiceFeature;->omcSalesCode:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/TeleServiceFeature;->scafe_version:Ljava/lang/String;

    const/4 v0, 0x2

    sput v0, Lcom/android/phone/TeleServiceFeature;->IncomingBargin_command:I

    sput-object v1, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    sput-object v1, Lcom/android/phone/TeleServiceFeature;->sContactsPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactsPackageName()Ljava/lang/String;
    .locals 7

    sget-object v4, Lcom/android/phone/TeleServiceFeature;->sContactsPackageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/phone/TeleServiceFeature;->sContactsPackageName:Ljava/lang/String;

    return-object v4

    :cond_0
    const-string/jumbo v1, "com.android.contacts"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string/jumbo v6, "com.android.contacts"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sput-object v3, Lcom/android/phone/TeleServiceFeature;->sContactsPackageName:Ljava/lang/String;

    :goto_0
    sget-object v4, Lcom/android/phone/TeleServiceFeature;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getContactsPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->sContactsPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/phone/TeleServiceFeature;->sContactsPackageName:Ljava/lang/String;

    return-object v4

    :cond_1
    sput-object v1, Lcom/android/phone/TeleServiceFeature;->sContactsPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v4, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v3, Lcom/android/phone/TeleServiceFeature;->sContactsPackageName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_1
.end method

.method public static getMessagePackageName()Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, "com.android.mms"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v4, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_0
.end method

.method public static getOmcNwCode()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    return-object v0
.end method

.method public static hasCallPoseFeature(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/phone/TeleServiceFeature;->hasSensorHub(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasCrane()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "RCS_CPR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasPackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasSensorHub(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "com.sec.feature.sensorhub"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasSystemFeature(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    sget-object v3, Lcom/android/phone/TeleServiceFeature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hasSystemFeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    return v3
.end method

.method public static isApplicationEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-boolean v1, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLte()Z
    .locals 2

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isMultiSimConfigDsdaEnabled()Z
    .locals 2

    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isMultiSimConfigDsdsEnabled()Z
    .locals 2

    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isSoftPhone()Z
    .locals 3

    const-string/jumbo v0, "Softphone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportCSVT()Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_VT_ConfigBearer"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "-CSVT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private static isSupportNearbyPlaces(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.smartcallprovider"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "off"

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    sget-object v2, Lcom/android/phone/TeleServiceFeature;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isSupportNearbyPlaces : true"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isSupportPenWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isSupportSmartCall(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.smartcallprovider"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "off"

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "off"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    return v1
.end method

.method public static isTablet()Z
    .locals 1

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static isVoiceCapable()Z
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSoftPhone()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static makeFeature(Landroid/content/Context;)V
    .locals 5

    sput-object p0, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "makeFeature start"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->omcSalesCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->omcSalesCode:Ljava/lang/String;

    sput-object v3, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_VoiceCall_ConfigOpStyleForVolte"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    new-instance v1, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;

    invoke-direct {v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;-><init>()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForVT()V

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForCommon(Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;)V

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForMobileNetworkSetting(Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;)V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForTablet()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForChina()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForIndia()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForHKTW()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForJapan()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForKor()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForUsa()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForCanada()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForLatin()V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForAustralia()V

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->makeFeatureForPhoneSearch(Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/external/CscParser;->getInstance()Lcom/android/phone/external/CscParser;

    move-result-object v3

    sput-object v3, Lcom/android/phone/TeleServiceFeature;->customerParser:Lcom/android/phone/external/CscParser;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->customerParser:Lcom/android/phone/external/CscParser;

    const-string/jumbo v4, "GeneralInfo"

    invoke-virtual {v3, v4}, Lcom/android/phone/external/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->customerParser:Lcom/android/phone/external/CscParser;

    const-string/jumbo v4, "SalesCode"

    invoke-virtual {v3, v0, v4}, Lcom/android/phone/external/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->customerParser:Lcom/android/phone/external/CscParser;

    invoke-virtual {v3, v2}, Lcom/android/phone/external/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public static makeFeatureForAustralia()V
    .locals 10

    const/4 v6, 0x1

    const-string/jumbo v5, "TEL"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "TLP"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "BST"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "BSP"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v5, "OPS"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "OPP"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v5, "VAU"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "VAP"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, "XSA"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "JBH"

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    return-void

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v6

    goto :goto_3

    :cond_4
    move v5, v6

    goto :goto_4

    :cond_5
    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v7, "support_hide_conference_manager_menu_srvcc"

    const-string/jumbo v8, "TEL"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v6, "TLP"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :cond_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "feature_tel"

    const-string/jumbo v7, "TEL"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "feature_vau"

    const-string/jumbo v7, "VAU"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "feature_aus"

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "volte_ui"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_ConfigViLTESettingMenu"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "TELViLTE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "disable_add_call_mute_hold_during_emergency_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "DisableMuteHold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static makeFeatureForCanada()V
    .locals 23

    const-string/jumbo v18, "RWC"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string/jumbo v18, "FMC"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v18, "RWA"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string/jumbo v18, "BMC"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v18, "VTR"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string/jumbo v18, "BMA"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v18, "TLA"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string/jumbo v18, "VMC"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string/jumbo v18, "BWA"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v18, "TLS"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string/jumbo v18, "KDO"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string/jumbo v18, "ESK"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string/jumbo v18, "GLW"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v18, "XAC"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    :goto_0
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    :goto_1
    if-nez v18, :cond_2

    return-void

    :cond_0
    const/16 v18, 0x1

    goto :goto_0

    :cond_1
    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "beep_vibration_for_ussd"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "feature_can"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v20, "video_call_not_support"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSupportCSVT()Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x0

    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "get_orig_dial_string_enable"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "network_mode_not_support_gsm_rwc_operator"

    const-string/jumbo v20, "HSPALTE"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v21

    const-string/jumbo v22, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v18, "enabled"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "canada_volte_ui"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v21, "CANADA_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v20, "canada_bmc_volte_ui"

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v21, "BMC_"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v21, "VMC_"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v21, "ESK_"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    :goto_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v20, "canada_volte_ims_register_deregister"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "emergency_e911_no_wait_insvc"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "NoWaitInSvcE911"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v19, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v20, "ims_rcs"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v18

    const-string/jumbo v21, "CscFeature_IMS_EnableRCSe"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_4
    const/16 v18, 0x0

    :goto_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v20, "use_simple_network_word"

    const-string/jumbo v18, "cust_network_sel_menu4_character"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v18, 0x0

    :goto_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v20, "support_video_call_setting"

    const-string/jumbo v18, "video_call_not_support"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    :goto_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v20, "feature_rwc"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_b

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    :goto_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_2

    :cond_6
    const/16 v18, 0x1

    goto/16 :goto_3

    :cond_7
    const/16 v18, 0x1

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_4

    const/16 v18, 0x1

    goto :goto_5

    :cond_9
    const/16 v18, 0x1

    goto :goto_6

    :cond_a
    const/16 v18, 0x1

    goto :goto_7

    :cond_b
    const/16 v18, 0x1

    goto :goto_8
.end method

.method public static makeFeatureForChina()V
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x1

    const-string/jumbo v7, "CHN"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "CHU"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "CTC"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "CHM"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "CHC"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v7, "CTC"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v7, "CHM"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v7, "CHC"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v7, "CHU"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v7, "CHN"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "CHU"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "CHM"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "CHC"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :goto_2
    if-nez v7, :cond_3

    return-void

    :cond_0
    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    move v7, v8

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "feature_chn"

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "feature_ctc"

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "feature_cmcc"

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "feature_cu"

    invoke-virtual {v7, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "auto_redial_time_delay"

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "ip_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_VoiceCall_SupportIPCall"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "action_bar_no_title_when_has_two_menu"

    const-string/jumbo v10, "ip_call"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "separate_call_reject"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSupportCSVT()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "reject_call_with_message_icon_mode"

    const-string/jumbo v10, "ICON"

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v10, "ctc_call_time_duration"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "feature_multisim_preferred_sim"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "get_orig_dial_string_enable"

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "china_cdma_call"

    const-string/jumbo v10, "networkmode_in_chn"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "emergency_call_sprd_multisim"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "enabled"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "ims_voice_conference_cmcc"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "ims_voice_conference"

    const-string/jumbo v10, "ims_voice_conference_cmcc"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "ts_rearrange_preset_image_setting"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "call_details_for_hd_icon"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForHdIcon"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "_HD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "enable_conference_info_banner"

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "delete_prefix_cmcc"

    const-string/jumbo v9, "CMCC"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Contact_ConfigMultiCallOption"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_ConfigCdmaAdditionalSetting"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "TEMP_FOR_CTC_NAL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "cdma_call_forwarding_indicator"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "volte_cmcc_cfu_time"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "hold_key_call_recording"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_SupportVoiceRecordingDuringHoldCall"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "multi_number_cmcc"

    const-string/jumbo v9, "CMCC"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Contact_ConfigMultiCallOption"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    move v7, v8

    goto/16 :goto_3
.end method

.method public static makeFeatureForCommon(Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;)V
    .locals 22

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "feature_sin"

    const-string/jumbo v19, "SIN"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "feature_swc"

    const-string/jumbo v19, "SWC"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "feature_org"

    const-string/jumbo v17, "OFR"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string/jumbo v17, "SFR"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string/jumbo v17, "FTM"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string/jumbo v17, "FTB"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "feature_sfr"

    const-string/jumbo v19, "SFR"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "feature_vdf"

    const-string/jumbo v17, "ATL"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "TCL"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "VD2"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "VDF"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "VDH"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "VDI"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "VGR"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "OMN"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "VOD"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string/jumbo v17, "XFV"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "hw_home_key"

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v20, 0x112006a

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x0

    :goto_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_folder_hardkey"

    const-string/jumbo v19, "com.sec.feature.folder_type"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_folder_single_lcd"

    const-string/jumbo v17, "com.sec.feature.folder_type"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string/jumbo v17, "com.sec.feature.dual_lcd"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_0
    const/16 v17, 0x0

    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_cancel_key_to_use_delete_digits"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v17, "CscFeature_Setting_ManualSearchListWithDetailStatus"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string/jumbo v17, "CscFeature_RIL_SupportAllRat"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string/jumbo v17, "CscFeature_RIL_PromptToDataRoam"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const-string/jumbo v17, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getCommonHwVendroConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->isRilSupportAllRatProduct()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->isRilSupportCdmaDunProduct()Z

    move-result v14

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "network_selection_delay"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "network_state_manual_search"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_conference_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_DisableConferenceCall"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x0

    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_merge_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_DisableMergeCall"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x0

    :goto_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_call_transfer"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_DisableCallTransfer"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x0

    :goto_6
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_call_transfer_blind_ect"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportImsBlindTransfer"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_all_rat"

    if-nez v13, :cond_c

    :goto_7
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "network_rat_info_during_plmn_selection"

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_cdma_dun"

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "prompt_to_data_roaming"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "voiceless_ota_provisioning_action"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForOta"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "VOICELESS"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "get_orig_dial_string_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportOrigDialString"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "change_network_mode_for_sipc"

    const-string/jumbo v19, "Sangria"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "vowifi_in_can"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFC_ROGERS"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_roaming_assistance_setting"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "replace_dual_sim_always_on"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_Setting_ReplaceLabel4DualSim"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "Smart dual SIM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "voice_call_recording"

    const-string/jumbo v17, "RecordingAllowed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    const-string/jumbo v17, "RecordingAllowedByMenu"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    :goto_8
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "hac_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_Setting_SupportHAC"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "default_noise_reduction"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "noise_suppression"

    const-string/jumbo v19, "USE_DUALMIC;USE_VT"

    const-string/jumbo v20, "USE_DUALMIC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "noise_suppression_support_speaker"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "enable_noise_reduction_in_wbamr"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "write_sleep_checking_file"

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->platform:Ljava/lang/String;

    if-eqz v17, :cond_e

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->platform:Ljava/lang/String;

    const-string/jumbo v20, "apq8064"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_9
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "beep_vibration_for_ussd"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_EnableBeepVibration4UssdAlert"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_spam_call_mutefirstring"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "DELAYEDRING"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "bike_mode"

    const-string/jumbo v19, "bikemode"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "fdn_button_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_EnableCallButtonInFdnList"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "disable_auto_area_code"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "hide_popup_progress_view"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "use_switch_preference_network_search"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "use_radio_preference_network_search"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_subaddress_settings"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "disable_mobile_data_settings"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_ims_conference_split"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportImsConfSplit"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "not_support_ims_conference_disconnect"

    const-string/jumbo v17, "STH"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string/jumbo v17, "XSP"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string/jumbo v17, "MM1"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string/jumbo v17, "OMN"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string/jumbo v17, "XSG"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "not_support_merge_button_on_vowifi"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "config_hide_status_bar"

    const-string/jumbo v19, "LAND"

    const-string/jumbo v20, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature$Floating;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "tw_scafe_2017a"

    const-string/jumbo v19, "2017A"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->scafe_version:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "remove_callforward_cfnry_timer"

    const-string/jumbo v19, "Remove"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_VoiceCall_ConfigCallforwardCfnryTimer"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_callforward_cfnry_timer"

    const-string/jumbo v19, "Support"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_VoiceCall_ConfigCallforwardCfnryTimer"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "default_incomingcall_popup"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "remove_incomingcall_popup"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "hide_caller_id"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_DisableClirMenu"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "disable_popupmsg_when_deactivationcf"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_DisablePopupMsgWhenDeactivatingCallForwarding"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "bootup_data_connection_popup"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_Setting_EnableDataServicePopup"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "bootup_data_tariff_rate_popup"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportDataTariffWizard"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "disappear_ussd_cancel_popup"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_DisableUssdCancelPopup"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "keypad_type_to_phone_for_ussd"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_KeypadTypeToDigit4UssdInput"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_easy_mode"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_easy_mode_enhanced"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_penwindow_callscreen"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSupportPenWindow()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "network_mode_spinner"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "jansky_info_for_tmo"

    const-string/jumbo v19, "Jansky"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "emergency_contact_sync_contact"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "call_block_ui"

    const-string/jumbo v19, "BLOCKUI"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_VoiceCall_ConfigOpStyleForBlockCall"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_charges_notification_in_pnl"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportChargeNotiPNL"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_onehand_operation"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_mobile_keyboard"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_second_screen"

    const-string/jumbo v19, "com.sec.feature.cocktailbar"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "enable_detail_call_end_reason"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "show_caller_info_setting"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "reject_call_with_message_simple_mode"

    sget v17, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v20, 0x138e4

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_10

    const/16 v17, 0x1

    :goto_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_c_serieses_setting_ux"

    const-string/jumbo v19, "galaxy_C"

    const-string/jumbo v20, "galaxy_8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "enhanced_phone_voice_record"

    const-string/jumbo v19, "voice_call_recording"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "ims_photoring_use_nxp"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "supported"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_IMS_EnableIMS"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "enabled"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "ims_rcs"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_IMS_EnableRCSe"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "ims_crane"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->hasCrane()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "ims_capability_service"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportImsCapabilityService"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "ims_support_volte_roaming"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v20, "SUPPORT_VOLTE_ROAMING_KOR"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Common_AutoConfigurationType"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "autoconfig_simbased_ssku"

    const-string/jumbo v19, "SIMBASED_SSKU"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "autoconfig_simbased_omc"

    const-string/jumbo v19, "SIMBASED_OMC"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "volte_outgoing_calltype_default_on"

    const-string/jumbo v17, "enabled"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    const-string/jumbo v17, "XSG"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_c
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "default_volte"

    const-string/jumbo v19, "enabled"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "mm1_volte_ui"

    const-string/jumbo v17, "enabled"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    const-string/jumbo v17, "MM1"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_d
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "evr_volte_ui"

    const-string/jumbo v19, "EVR"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "singapore_volte_ui"

    const-string/jumbo v17, "SIN"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    const-string/jumbo v17, "STH"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    const-string/jumbo v17, "XSP"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    const-string/jumbo v17, "MM1"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_e
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "disable_manage_conference_call"

    const-string/jumbo v19, "disable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_VoiceCall_DisableImsConfManage"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "ee_volte_ui"

    const-string/jumbo v17, "PHN"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string/jumbo v17, "NEE"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string/jumbo v17, "DTM"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string/jumbo v17, "DTR"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string/jumbo v17, "DCZ"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string/jumbo v17, "TMZ"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string/jumbo v17, "VIA"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string/jumbo v17, "OMN"

    sget-object v20, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_f
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "modify_call_us"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportModifyCall"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "volte_settings_in_mobile_networks_global"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_IMS_ConfigExtendedFeatures"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "ADV_CALLING_GLOBAL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "remove_volte_outgoing_calltype_menu"

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v20, "ADD_VOLTE_OUTGOING_SETTING"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    :goto_10
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "video_call_not_support"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSupportCSVT()Z

    move-result v17

    if-eqz v17, :cond_16

    const/16 v17, 0x0

    :goto_11
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "smart_ivr_callerid_info"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportSmartIvr"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "default_caller_information"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForIncomingCall"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "CALLERINFOCARD_DEFAULT_OFF"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_17

    const/16 v17, 0x0

    :goto_12
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "disable_format_number"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "phone_number_locator"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForRoaming"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "PNL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "phone_number_locator_tencent"

    const-string/jumbo v17, "phone_number_locator"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    const-string/jumbo v17, "com.sgmc.phonenumberlocatorservice"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v17

    :goto_13
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "visual_call_center_callerid_info"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportVisualCallCenter"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_native_visual_voicemail"

    const-string/jumbo v19, "CanUseNative"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_Common_ConfigVvm"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "start_ota_screen_directly"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "remove_call_forwarding"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_RemoveCallForwarding"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "show_callforward_allcalls_string"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigLabelForCallForward"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "enable_ss_settings_vowifi_regi"

    const-string/jumbo v19, "SS"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_VoiceCall_SupportSettingVoWifiRegiDuringAirplaneMode"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "enable_call_setting_vowifi_regi"

    const-string/jumbo v19, "Call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_VoiceCall_SupportSettingVoWifiRegiDuringAirplaneMode"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "enable_all_setting_vowifi_regi"

    const-string/jumbo v19, "All"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_VoiceCall_SupportSettingVoWifiRegiDuringAirplaneMode"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "default_vm_in_callforwarding"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_EnableVmsNumberAsDefaultInCallForwarding"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "remove_additional_call_setting"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOptStyleForMoreSetting"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "Remove"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_other_call_settings"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportOtherSettings"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "disable_call_barring"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOptStyleForCallBarring"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "Disable"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "remove_call_barring"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOptStyleForCallBarring"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "RemoveAll"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "remove_cdma_call_barring"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOptStyleForCallBarring"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "RemoveCDMA"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "remove_fdn"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_DisableFdn"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "wfc_preferred_menu_wifi_only_plus"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFC_PREF_ADD_WIFI_ONLY"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_video_call_setting"

    const-string/jumbo v17, "psvt_support"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_19

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSupportCSVT()Z

    move-result v17

    :goto_14
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    const-string/jumbo v18, "vibrator"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Vibrator;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "emergency_dialer_haptic_feedback_enabled"

    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Landroid/os/Vibrator;->semIsHapticSupported()Z

    move-result v17

    :goto_15
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "emergency_contacts"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "emergency_dialer_expandable_dial"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "play_emergency_dialer_key_tone"

    const-string/jumbo v19, "support_folder_hardkey"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "feature_multisim"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v17

    if-nez v17, :cond_1b

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v17

    :goto_16
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "feature_multisim_dsda"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "feature_multisim_preferred_sim"

    const-string/jumbo v19, "feature_multisim"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "has_two_modem"

    const-string/jumbo v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_1
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "qcom_cross_mapping"

    const-string/jumbo v17, "feature_multisim"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_RIL_SupportQcomCrossMapping"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    :goto_17
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "not_ota_ui_display"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForOta"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "NOUI"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "reboot_after_ota_success"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForOta"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "RebootAfterOtaSuccess"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "activate_your_phone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForOta"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "ActivateYourPhone"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "otasp_in_call_disable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForOta"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "DisableCall"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "show_ota_popup"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "emergency_callback_mode_exit_timer_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportRemainingTimeForEmergencyCallback"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "emergency_call_tone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigTonePolicyForEmergencyDial"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "FORCE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigTonePolicyForEmergencyDial"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "SUPPORT"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    :goto_18
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "wifi_disable_during_emergency_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "OFFWIFI"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "wifi_disable_during_emergency_call_without_vowifi"

    const-string/jumbo v17, "wifi_disable_during_emergency_call"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportEmergencyCallUsingVoWifi"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1e

    const/16 v17, 0x0

    :goto_19
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "emergency_call_state_update_after_dial"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "STATE_UPDATE_AFTER_DIAL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_safetycare"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v17

    const-string/jumbo v20, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_20

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v17

    const-string/jumbo v20, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_20

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v17

    const-string/jumbo v20, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    :goto_1a
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_safetycare_not_change_network_mode"

    const-string/jumbo v17, "support_safetycare"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_21

    const-string/jumbo v17, "NOCHANGE"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v20

    const-string/jumbo v21, "CscFeature_Common_ConfigNetworkModeDuringEmergency"

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    :goto_1b
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_wfc"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_wfc_gpg"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFC_GPG"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_wfc_dt"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFC_DT"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_wfc_ftm"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFC_FTM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_wfc_opl"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFC_OPL"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "not_support_ss_query"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_DisableSsQuery"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_sec_wfc"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_Common_SupportSecWFC"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_vowifi_att_wave2"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_RIL_ConfigEpdgExtraFunction"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WAVE2"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_additional_ss_query"

    const-string/jumbo v17, "enabled"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportAdditionalSsQuery"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    :goto_1c
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "gesture_callaccept"

    const-string/jumbo v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature$Floating;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v17, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/speech/SemSpeechRecognizer;-><init>()V

    sput-object v17, Lcom/android/phone/TeleServiceFeature;->mBargeInRecognizer:Lcom/samsung/android/speech/SemSpeechRecognizer;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "barge_in"

    sget-object v19, Lcom/android/phone/TeleServiceFeature;->mBargeInRecognizer:Lcom/samsung/android/speech/SemSpeechRecognizer;

    sget v20, Lcom/android/phone/TeleServiceFeature;->IncomingBargin_command:I

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(I)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_swis"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "enable_volte_hold_tone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportVolteHoldTone"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "NOT"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_23

    const/16 v17, 0x0

    :goto_1d
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_softphone"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSoftPhone()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "tty_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_SupportTTY"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    const-string/jumbo v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_smart_call"

    const/16 v19, 0x0

    aget-object v19, v8, v19

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->isSupportSmartCall(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const-string/jumbo v17, "support_smart_call"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_smart_call_mcc"

    const/16 v17, 0x1

    aget-object v17, v8, v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_24

    const/16 v17, 0x0

    :goto_1e
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v17, "support_smart_call"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    aget-object v17, v8, v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_25

    :cond_3
    :goto_1f
    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_search_nearby_places"

    const/16 v17, 0x0

    aget-object v17, v8, v17

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->isSupportNearbyPlaces(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_27

    sget v17, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v20, 0x138e4

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_26

    const/16 v17, 0x1

    :goto_20
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, v8

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    const-string/jumbo v17, "support_search_nearby_places"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_search_nearby_places_mcc"

    const/16 v17, 0x1

    aget-object v17, v8, v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_28

    const/16 v17, 0x0

    :goto_21
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_call_popup"

    sget v17, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v20, 0x138e4

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_29

    const/16 v17, 0x1

    :goto_22
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_about_phone"

    sget v17, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v20, 0x138e4

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_2a

    const/16 v17, 0x1

    :goto_23
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_spam_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "DELAYEDRING"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2b

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v20, "REJECT"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    :goto_24
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_spam_call_reject"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "REJECT"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_spam_call_smartmanager"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "SMARTMANAGER"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_galaxy_labs"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "do_not_send_intent_for_keystring"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "hot_swap_type_sim"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "china_vip_mode"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_Common_EnableVIPMode"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "show_wfc_help_noti"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFC_HELP_NOTI"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "show_wfc_help_text_osp"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFC_HELP_ADD_OSP"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "show_wfc_emergency_call_dialog"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "ECallDlgVFDE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "show_wfc_information_dialog_latin"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFCInfoDialogLatin"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "get_wfc_title_from_csc"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v19

    const-string/jumbo v20, "CscFeature_VoiceCall_ConfigOpStyleForWfc"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WFC_TITLE_FROM_CSC"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "support_message_block_number"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v20, "CscFeature_Message_DisableSpam"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2c

    const/16 v17, 0x0

    :goto_25
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_bixby"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v19

    const-string/jumbo v20, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v19, "show_swipe_to_call_message"

    sget v17, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v20, 0x138e4

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_2d

    const/16 v17, 0x1

    :goto_26
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "config_voice_capable"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isVoiceCapable()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_2

    :cond_8
    const/16 v17, 0x1

    goto/16 :goto_3

    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_6

    :cond_c
    const/4 v12, 0x1

    goto/16 :goto_7

    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_8

    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_f
    const/16 v17, 0x1

    goto/16 :goto_a

    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_b

    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_c

    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_d

    :cond_13
    const/16 v17, 0x1

    goto/16 :goto_e

    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_f

    :cond_15
    const/16 v17, 0x1

    goto/16 :goto_10

    :cond_16
    const/16 v17, 0x1

    goto/16 :goto_11

    :cond_17
    const/16 v17, 0x1

    goto/16 :goto_12

    :cond_18
    const/16 v17, 0x0

    goto/16 :goto_13

    :cond_19
    const/16 v17, 0x1

    goto/16 :goto_14

    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_15

    :cond_1b
    const/16 v17, 0x1

    goto/16 :goto_16

    :cond_1c
    const/16 v17, 0x0

    goto/16 :goto_17

    :cond_1d
    const/16 v17, 0x1

    goto/16 :goto_18

    :cond_1e
    const/16 v17, 0x1

    goto/16 :goto_19

    :cond_1f
    const/16 v17, 0x0

    goto/16 :goto_19

    :cond_20
    const/16 v17, 0x1

    goto/16 :goto_1a

    :cond_21
    const/16 v17, 0x0

    goto/16 :goto_1b

    :cond_22
    const/16 v17, 0x0

    goto/16 :goto_1c

    :cond_23
    const/16 v17, 0x1

    goto/16 :goto_1d

    :cond_24
    const/16 v17, 0x1

    goto/16 :goto_1e

    :cond_25
    const/16 v17, 0x0

    aget-object v17, v8, v17

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_smart_call_whitepage"

    const-string/jumbo v19, "whitepages"

    const/16 v20, 0x1

    aget-object v20, v9, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v18, "support_smart_call_whowho"

    const-string/jumbo v19, "whowho"

    const/16 v20, 0x1

    aget-object v20, v9, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    :cond_26
    const/16 v17, 0x0

    goto/16 :goto_20

    :cond_27
    const/16 v17, 0x0

    goto/16 :goto_20

    :cond_28
    const/16 v17, 0x1

    goto/16 :goto_21

    :cond_29
    const/16 v17, 0x0

    goto/16 :goto_22

    :cond_2a
    const/16 v17, 0x0

    goto/16 :goto_23

    :cond_2b
    const/16 v17, 0x1

    goto/16 :goto_24

    :cond_2c
    const/16 v17, 0x1

    goto/16 :goto_25

    :cond_2d
    const/16 v17, 0x0

    goto/16 :goto_26
.end method

.method public static makeFeatureForHKTW()V
    .locals 7

    const/4 v4, 0x1

    const-string/jumbo v3, "TGY"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "BRI"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "CWT"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "TWN"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "FET"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ZZH"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "TGY"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "ZZH"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v3, "BRI"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "CWT"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "TWN"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "FET"

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "feature_hktw"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "enabled"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "common_volte_hktw"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "common_volte_hk"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "hk_local_ringback_tone"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "common_volte_tw"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "ts_rearrange_preset_image_setting"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v4, "ctc_call_time_duration"

    const-string/jumbo v5, "support_all_rat"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v4, "china_cdma_call"

    const-string/jumbo v5, "networkmode_in_hktw"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    move v3, v4

    goto/16 :goto_1

    :cond_6
    move v3, v4

    goto/16 :goto_2
.end method

.method public static makeFeatureForIndia()V
    .locals 6

    const/4 v3, 0x1

    const-string/jumbo v2, "INU"

    sget-object v4, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "INS"

    sget-object v4, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "feature_india"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "enabled"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v4, "common_volte_in"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "ts_rearrange_preset_image_setting"

    const-string/jumbo v4, "common_volte_in"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public static makeFeatureForJapan()V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v3, "DCM"

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v3, "KDI"

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v3, "SBM"

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_0
    if-nez v3, :cond_1

    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "feature_dcm"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "feature_kdi"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "feature_sbm"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "feature_jpn"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "nck_block_feature"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v7, "dcm_disable_block_reject_call"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "call_setting_ui_kdi"

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "dcm_enable_autoreject_mode_option"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_SupportAutoReject"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "emergency_contacts"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "emergency_dialer_expandable_dial"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v7, "remove_voicemail_category"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "dcm_parse_network_service_ussd"

    const-string/jumbo v7, "DCM"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_VoiceCall_ConfigOpRuleForUssdParsing"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "toddler_mode_jpn"

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature$Floating;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "airplain_mode_jpn"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "change_hangup_ipc_in_auto_reject"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "automatic_answering_machine"

    const-string/jumbo v7, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_VoiceCall_SupportAutoAnsweringMemo"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "support_sync_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_ConfigOpPhoneService"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SYNC_CALL_KDI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "dcm_dialer_prefix_setting_support"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_SupportDialerPrefixSetting"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "dcm_reject_call_msg_limit"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_ConfigOpStyleForRejectMsg"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "JPN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "dcm_auto_reject_conditions"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_SupportBlockedNumberCategories"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "support_roaming_assistance_setting"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "voicemail_roaming_nuber"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "voicemail_notification_setting"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_ConfigOpStyleForVoicemail"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v7, "video_call_not_support"

    const-string/jumbo v3, "vtcommon_enabled"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "disable_auto_area_code"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_additional_service"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "disable_mobile_data_settings"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v3, "enabled"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "ims_voice_conference_kddi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "ims_voice_conference"

    const-string/jumbo v7, "ims_voice_conference_kddi"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "out_participant_conference"

    const-string/jumbo v7, "ims_voice_conference_kddi"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remain_disconnected_list_conference"

    const-string/jumbo v7, "ims_voice_conference_kddi"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "support_hide_conference_manager_menu_srvcc"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_ConfigOpStyleForConfMgr"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "HideConferenceManagerOnSrvcc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "ims_support_volte_roaming"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "psvt_support"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "ts_rearrange_preset_image_setting"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "dcm_play_ring_back_tone_sound"

    const-string/jumbo v7, "DCM"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_VoiceCall_ConfigRingbackToneForVolte"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "dcm_volte_popup_message"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_ConfigOpStyleForPopupMsg"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v3, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "support_video_call_setting"

    const-string/jumbo v7, "video_call_not_support"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    move v3, v4

    goto/16 :goto_1

    :cond_5
    move v3, v4

    goto/16 :goto_2

    :cond_6
    move v3, v4

    goto/16 :goto_3

    :cond_7
    move v5, v4

    goto :goto_4
.end method

.method public static makeFeatureForKor()V
    .locals 12

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "SKT"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "SKC"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "SKO"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, "KTT"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "KTC"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "KTO"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v5, "LGT"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "LUC"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "LUO"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v5, "ANY"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "KOO"

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    return-void

    :cond_0
    move v5, v6

    goto/16 :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v6

    goto :goto_3

    :cond_4
    move v5, v6

    goto :goto_4

    :cond_5
    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "feature_kor"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "feature_skt"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "feature_ktt"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "feature_lgt"

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "feature_kor_open"

    invoke-virtual {v5, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "default_noise_reduction"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "support_function_sound_tuning"

    const-string/jumbo v9, "KOR"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_VoiceCall_ConfigAudioWaitingTone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "disable_waiting_tone"

    const-string/jumbo v9, "KOR"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_VoiceCall_ConfigOpStyleForWaitingTone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "separate_ringback_gain"

    const-string/jumbo v9, "KOR"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_VoiceCall_ConfigAudioRingbackGain"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "support_tphone"

    const-string/jumbo v5, "tphone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "com.skt.prod.phone"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "support_twophone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "support_uwa"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Common_SupportUwaApp"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "auto_unhold"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_SupportAutoUnholdForMultiCallFinish"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "lost_phone_lock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForFindMobile"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "LOST_PHONE_LOCK_LGU"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "ota_mode_disable_expand"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_DisableNotiBarExpandDuringOta"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "support_display_bitrate"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VideoCall_SupportDisplayBitrate"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "do_not_send_intent_for_keystring_ktt"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForNetworkSetting"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "DoNotSendIntentForKeyString"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "roaming_auto_dial"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "roaming_volte_kor"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "remove_voicemail_category"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "support_roaming_assistance_setting"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "ts_rearrange_preset_image_setting"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "ts_support_speaker_only"

    const-string/jumbo v5, "psvt_support"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "no_receiver_in_call"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    :goto_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "kor_cs_vt_ui"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "video_call_not_support"

    const-string/jumbo v5, "psvt_support"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSupportCSVT()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_6
    move v5, v7

    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "ims_call_message"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "video_conference"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VT_SupportGroupCall"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "handle_not_registered"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "ims_voice_conference"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "ims_support_photo_ring"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v10, "McidV1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "ims_support_multimedia_caller_id"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_SupportMCID"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "support_uicc_mobility"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "optis_command_test"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "auto_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "support_kt_hidden_data_network"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForNetworkSetting"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "SupportKtHiddenDataNetwork"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "support_do_not_show_again_data_selection_popup"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "block_data_during_call"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "hd_voice_network_prefer"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "interworking_hd_voice_by_intent"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_SupportInterworkingHdVoiceByIntent"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "international_call_service"

    const-string/jumbo v9, "KOR"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "modify_reject_message_for_kor"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForRejectMsg"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "KOR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "display_reject_message_limit_for_kor"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForRejectMsg"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "KOR"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "restrict_international_call"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "extended_restrict_international_call"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "support_oneline_greeting"

    const-string/jumbo v5, "ims_support_multimedia_caller_id"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v10, "CscFeature_VoiceCall_SupportOneLineGreeting"

    invoke-virtual {v5, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :goto_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "personalise_call_sound_soft"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_SupportMenuPersonaliseSoftSound"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "handle_alerting_state"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "emergency_find_lost_phone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_ConfigOpStyleForFindMobile"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "TRUE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "default_incomingcall_popup"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_e

    const-string/jumbo v5, "default_incomingcall_popup"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    :goto_c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "support_nsri_secure"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "cdnip_supplementary_service"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "single_lte"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_SupportSingleLTE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "common_volte_kor"

    const-string/jumbo v5, "enabled"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v10, "KOR_"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    :goto_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "volte_outgoing_calltype_default_on"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v10, "DEFAULT_OFF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    :goto_e
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    move v5, v7

    goto/16 :goto_5

    :cond_8
    move v5, v6

    goto/16 :goto_6

    :cond_9
    move v5, v6

    goto/16 :goto_7

    :cond_a
    move v5, v7

    goto/16 :goto_8

    :cond_b
    move v5, v6

    goto/16 :goto_9

    :cond_c
    move v5, v6

    goto/16 :goto_a

    :cond_d
    move v5, v7

    goto/16 :goto_b

    :cond_e
    move v5, v7

    goto :goto_c

    :cond_f
    move v5, v7

    goto :goto_d

    :cond_10
    move v7, v6

    goto :goto_e
.end method

.method public static makeFeatureForLatin()V
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v6, "ro.csc.countryiso_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "BR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "MX"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "AR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "UY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "CO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "CL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "PE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "VE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "PY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "GT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "SV"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "HN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "NI"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "PA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "EC"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "PR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "DO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "JM"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "CR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "TT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "BO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "DM"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "CU"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "M4"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "UFN"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v6, "PNT"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "PET"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "SAM"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v10, "ltn_auto_csp"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v11, "CscFeature_VoiceCall_EnablePrefix4LongDistanceCallAs"

    invoke-virtual {v6, v11}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_5

    move v6, v7

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "ltn_sdnname_display"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_VoiceCall_EnableDisplaySdnNameDuringCall"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "fdn_contact_search"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Contact_SearchIncludingFdn"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "disable_toast_popup_when_mo_ccf"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_VoiceCall_DisableToastPopupWhenMOConditionalCallForwarding"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "TFG"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "ril.product_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v6, "COB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "disable_popupmsg_when_deactivationcf"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "disable_enter_nck"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Phone_DisableEnterNCK"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v10, "add_label_for_simlock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v11, "CscFeature_Phone_AddLabelForSimLock"

    invoke-virtual {v6, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v8

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v9, "use_simple_network_word"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "remove_mmi_complete_popup"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_DisableUssdCompleteNoti"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "change_ussd_popup_lte"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_UseUssdToastForNetworkNoResp"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v8, "disable_edit_callerid"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_VoiceCall_DisableEditingCallerID"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const-string/jumbo v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    if-le v6, v7, :cond_3

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v7, "feature_multisim_carrier_match"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Common_EnableCarrierMatchingForMultiSimDev"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v7, "feature_zta"

    const-string/jumbo v8, "ZTA"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v7, "feature_zvv"

    const-string/jumbo v8, "ZVV"

    sget-object v9, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    move v6, v7

    goto/16 :goto_1

    :cond_5
    move v6, v8

    goto/16 :goto_2

    :cond_6
    move v6, v7

    goto/16 :goto_3
.end method

.method private static makeFeatureForMobileNetworkSetting(Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;)V
    .locals 41

    const-string/jumbo v37, "CscFeature_VoiceCall_ConfigOpStyleForNetworkSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v37, "CscFeature_VoiceCall_ConfigNetworkList"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v37, "CscFeature_VoiceCall_ConfigGlobalNetwork"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v37, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v37, "CscFeature_VoiceCall_ConfigOpStyleForMobileNetSetting"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v37, "CscFeature_VoiceCall_ConfigOpStyleForRoaming"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v37, "CscFeature_Common_UseChameleon"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    const-string/jumbo v37, "CscFeature_Setting_EnableDataRoamingButtonInQuickPanel"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string/jumbo v37, "CscFeature_Setting_DataRoamingOption"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v37, "CscFeature_Setting_EnableDataRoamingMenuInDetail"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    const-string/jumbo v37, "CscFeature_Setting_DisableNetworkMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v37, "CscFeature_Setting_CustNetworkSelMenu4"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v37, "CscFeature_VoiceCall_ConfigOpStyleForFactoryTest"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v37, "CscFeature_VoiceCall_DisableAlertToneSignal"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string/jumbo v37, "CscFeature_RIL_Support75Mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    const-string/jumbo v37, "CscFeature_Common_SupportWcdmaFddLte"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    const-string/jumbo v37, "CscFeature_RIL_SupportWcdma75Mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    const-string/jumbo v37, "CscFeature_Common_SupportWcdmaInSlave"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->isSupportWcdmaInSlave()Z

    move-result v32

    :goto_0
    const-string/jumbo v37, "CscFeature_RIL_ConfigPsOnlyList"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v37, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    const-string/jumbo v37, "CscFeature_RIL_DisableRoamingMultiIMSI"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    const-string/jumbo v37, "CscFeature_VoiceCall_SupportPopupInternetAlert"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    const-string/jumbo v37, "CscFeature_VoiceCall_SupportPopupForDataOff"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v25

    const-string/jumbo v37, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    const-string/jumbo v37, "CscFeature_Setting_CustNetworkSelMenu4"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v37, "CscFeature_Setting_SupportCdmaApn"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    const-string/jumbo v37, "CscFeature_RIL_RoamingRegWarnigNoti"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->isSupportRoamingRegWarningNoti()Z

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->isSupportLTERoaming()Z

    move-result v23

    const-string/jumbo v37, "CscFeature_Setting_SupportChangeNetworkModeDuringNoSim"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->isSupportSupportSoftSim()Z

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->isRilShowDataSelectPopupOnBootUp()Z

    move-result v18

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_setting_tmo"

    const-string/jumbo v39, "NetworkSetting_TMO"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_setting_att"

    const-string/jumbo v39, "NetworkSetting_ATT"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_setting_aio"

    const-string/jumbo v39, "NetworkSetting_AIO"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "usa_gsm_support_femto_cell_network"

    const-string/jumbo v39, "SupportFemtoCellForUsaGsm"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "usa_gsm_network_setting"

    const-string/jumbo v39, "UsaGsmNetworkSetting"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "sim2_2g_only"

    const-string/jumbo v39, "2gOnlyInSim2"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "preferred_network_mode_reboot_enable"

    const-string/jumbo v39, "PreferredNTModeReboot"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_manual_selection_when_bootup"

    const-string/jumbo v39, "ManualSelectionWhenBootup"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_auto_selection_when_bootup"

    const-string/jumbo v39, "AutoSelectionWhenBootup"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "dcm_show_network_info_in_manual_search_list"

    const-string/jumbo v39, "ManualSearchForDcm"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "kdi_show_network_info_in_manual_search_list"

    const-string/jumbo v39, "ManualSearchForKDI"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_action_domestic_network"

    const-string/jumbo v39, "SupportActionDomesticNT"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "old_cp_select_network"

    const-string/jumbo v39, "OldCpSelectNT"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cdma_evdo_tfn"

    const-string/jumbo v39, "CdmaEvdoTfn"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cdma_subscription_enable"

    const-string/jumbo v39, "CdmaSubscriptionEnable"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "system_selection_automatic_ab_enable"

    const-string/jumbo v39, "SystemSelectionAutoAB"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_kt_hidden_data_network"

    const-string/jumbo v39, "SupportKtHiddenDataNetwork"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "do_not_send_intent_for_keystring_ktt"

    const-string/jumbo v39, "DoNotSendIntentForKeyString"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_check_data_roaming"

    const-string/jumbo v39, "SupportCheckDataRoaming"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "override_name_network_search_for_sun_operator"

    const-string/jumbo v39, "ManualSearchForSun"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_data_popup"

    const-string/jumbo v39, "SupportDataPopup"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "support_soft_sim"

    if-nez v29, :cond_5

    const-string/jumbo v37, "SupportSoftSim"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    :goto_1
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "need_change_network_mode_for_slot_no_active_sim"

    const-string/jumbo v39, "SupportChangeNetworkModeForSlotNoActiveSim"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "stop_network_searching_on_pause"

    const-string/jumbo v39, "StopNetworkSearchingOnPause"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "get_preferred_network_mode_for_lteonly"

    const-string/jumbo v39, "GetPreferredNTModeForLteOnly"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_ens_network_setting"

    const-string/jumbo v39, "SupportENSNetworkSetting"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_ens_network_setting_for_mvno"

    const-string/jumbo v39, "SupportENSNetworkSettingForMvno"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_data_off_notification"

    const-string/jumbo v39, "SupportDataOffNotification"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_off_warning_popup_on_bootup"

    const-string/jumbo v39, "ShowDataOffWarningPopupOnBootup"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_international_roaming_notification"

    const-string/jumbo v39, "SupportInternationalRoamingNotification"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "hide_network_operator_summary"

    const-string/jumbo v37, "HideNetworkOperatorSummary"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_6

    const-string/jumbo v37, "feature_multisim"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    :goto_2
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "national_roaming_mode_menu_play"

    const-string/jumbo v39, "nationalroamingmodemenuplay"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_roaming_style_for_zta"

    const-string/jumbo v39, "dataroamstyleforZTA"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_roaming_style_for_att"

    const-string/jumbo v39, "dataroamstyleforATT"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_roaming_style_for_kor"

    const-string/jumbo v39, "dataroamstyleforKOR"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_roaming_style_for_jpn"

    const-string/jumbo v39, "dataroamstyleforJPN"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_roaming_style_for_lgt"

    const-string/jumbo v39, "dataroamstyleforLGT"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "national_roaming_mode_menu"

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_roaming_option_national"

    const-string/jumbo v39, "national"

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_roaming_option_all"

    const-string/jumbo v39, "all"

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_roaming_noti_tray"

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "roaming_without_chameleon"

    const-string/jumbo v39, "roamingwithoutchameleon"

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "roaming_with_chameleon"

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "lte_roaming_enhancement"

    const-string/jumbo v39, "lteroamingenhancement"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "lte_roaming_band_control"

    const-string/jumbo v39, "lteroamingbandcontrol"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "global_data_roaming_access_enable"

    const-string/jumbo v39, "globaldataroamingaccessenable"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "data_roaming_warning_popup"

    const-string/jumbo v37, "dataroamingwarningpopup"

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_7

    const-string/jumbo v37, "data_roaming_style_for_jpn"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    :goto_3
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "data_roaming_without_noti"

    const-string/jumbo v39, "dataroamingwithoutnoti"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "roaming_enhancement"

    const-string/jumbo v39, "roamingenhancement"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "csc_ril_roaming_reg_warning_noti"

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "product_ril_roaming_reg_warning_noti"

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "roaming_setting_guard_data_only"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isVoiceCapable()Z

    move-result v37

    if-eqz v37, :cond_8

    const/16 v37, 0x0

    :goto_4
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v36

    if-eqz v36, :cond_9

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/knox/custom/SettingsManager;->getLTESettingState()Z

    move-result v37

    if-eqz v37, :cond_9

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->TAG:Ljava/lang/String;

    const-string/jumbo v38, "makeFeatureForCommon(): cSDK: LTE Setting is true"

    invoke-static/range {v37 .. v38}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_lteonly"

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "remove_network_mode_wcdma_gsm_only"

    const-string/jumbo v39, "wcdmagsmonly"

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "remove_network_mode_wcdma_only"

    const-string/jumbo v39, "wcdmaonly"

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "remove_network_mode_gsm_only"

    const-string/jumbo v39, "gsmonly"

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "remove_network_mode_gsm"

    const-string/jumbo v39, "gsm"

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "remove_network_mode_lte"

    const-string/jumbo v39, "lte"

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_add_ltewcdma"

    const-string/jumbo v39, "AddLteWcdma"

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_0

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_atl_lte"

    const-string/jumbo v39, "ATL"

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_o2"

    const-string/jumbo v39, "O2"

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_orange"

    const-string/jumbo v39, "ORANGE"

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_sfr"

    const-string/jumbo v39, "SFR"

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_vodafone"

    const-string/jumbo v39, "VODAFONE"

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_via"

    const-string/jumbo v39, "VIA"

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_numeric"

    const-string/jumbo v39, "NUMERIC"

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_character"

    const-string/jumbo v39, "CHARACTER"

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "use_simple_network_word"

    const-string/jumbo v37, "cust_network_sel_menu4_character"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_a

    const/16 v37, 0x0

    :goto_6
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "usa_cdma_smc_fac_req"

    const-string/jumbo v39, "UsaCdma"

    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "ctc_cdma_smc_fac_req"

    const-string/jumbo v37, "CtcCdma"

    move-object/from16 v0, v37

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_b

    const-string/jumbo v37, "support_all_rat"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    :goto_7
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "no_alert_tone_signal"

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "disable_network_mode"

    const-string/jumbo v39, "DisableNetworkMode"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "enhanced_4glte_menu"

    const-string/jumbo v39, "+enhanced4glte2"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_global_lte_cdma_gsm_umts"

    const-string/jumbo v39, "GlobalLteCdmaGsmUmts"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_not_support_gsm"

    const-string/jumbo v39, "NotGsm"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_global_lte_gsm"

    const-string/jumbo v39, "GlobalLteGsm"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_global_lte_wcdma"

    const-string/jumbo v39, "GlobalLteWcdma"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "network_mode_global_lte_cdma"

    const-string/jumbo v37, "GlobalLteCdma"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_1

    const-string/jumbo v37, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_c

    :cond_1
    const/16 v37, 0x0

    :goto_8
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_automatic_cdma_lte_gsm"

    const-string/jumbo v39, "AutomaticCdmaLteGsm"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "network_mode_cdma_lte"

    const-string/jumbo v37, "CdmaLte"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_2

    const-string/jumbo v37, "network_mode_automatic_cdma_lte_gsm"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_d

    :cond_2
    const/16 v37, 0x0

    :goto_9
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "networkmode_in_can"

    const-string/jumbo v39, "NetworkModeInCan"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "NETWORK_MODE_NOT_SUPPORT_3G_ONLY_AND_2G_ONLY"

    const-string/jumbo v39, "Not3gOnlyAnd2gOnly"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_list_tmo"

    const-string/jumbo v39, "NetworkMode_TMO"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_list_dcm"

    const-string/jumbo v39, "NetworkModeInDcmLte3g"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_list_jpn_sbm"

    const-string/jumbo v39, "NetworkModeInJpnSbm"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_list_kdi"

    const-string/jumbo v39, "NetworkModeInKdi"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_list_kdi_roaming"

    const-string/jumbo v39, "NetworkModeInKdiRoaming"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_list_hktw"

    const-string/jumbo v39, "NetworkModeInHKTWLegacy"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "disable_network_mode_list_lte"

    const-string/jumbo v39, "DisableNTLte"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_cmcc"

    const-string/jumbo v39, "NetworkModeInCmcc"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "sprint_mvno_mobile_networks"

    const-string/jumbo v39, "NetworkModeInMvno"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "networkmode_in_chn"

    const-string/jumbo v39, "NetworkModeInChn"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "networkmode_in_hktw"

    const-string/jumbo v39, "NetworkModeInHKTW"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_list_zvv"

    const-string/jumbo v39, "NetworkMode_ZVV"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "network_mode_list_usa_type"

    const-string/jumbo v37, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_e

    const-string/jumbo v37, "network_mode_global_lte_gsm"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_e

    const-string/jumbo v37, "network_mode_global_lte_wcdma"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_e

    const-string/jumbo v37, "network_mode_automatic_cdma_lte_gsm"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_e

    const-string/jumbo v37, "network_mode_global_lte_cdma"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_e

    const-string/jumbo v37, "network_mode_cdma_lte"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_e

    const-string/jumbo v37, "NetworkModeInUsa"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    :goto_a
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "network_mode_list_chn_type"

    const-string/jumbo v37, "networkmode_in_chn"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_f

    const-string/jumbo v37, "networkmode_in_hktw"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    :goto_b
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "network_mode_list_lte"

    const-string/jumbo v37, "disable_network_mode_list_lte"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_10

    const/16 v37, 0x0

    :goto_c
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "global_network_cdma_gsm_enable"

    const-string/jumbo v39, "Global"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "global_network_cdma_gsm_enable_for_spr"

    const-string/jumbo v39, "GlobalForSpr"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "global_network_cdma_gsm_enable_for_vzw"

    const-string/jumbo v39, "GlobalForVzw"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "global_network_cdma_gsm_enable_for_usc"

    const-string/jumbo v39, "Global_USC"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "change_network_mode_when_no_sim_bootup"

    const-string/jumbo v37, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_3

    const-string/jumbo v37, "network_mode_cdma_lte"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_11

    :cond_3
    const/16 v37, 0x0

    :goto_d
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "network_mode_global_tdscdma"

    const-string/jumbo v39, "global_network_cdma_gsm_enable"

    invoke-static/range {v39 .. v39}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cdma_apn_enable"

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_networkmode_in_nosim"

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_common"

    const-string/jumbo v39, "voltesettingscommon"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_eur"

    const-string/jumbo v39, "voltesettingEUR"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_chn"

    const-string/jumbo v39, "voltesettingCHN"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_hk"

    const-string/jumbo v39, "voltesettingHK"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_tw"

    const-string/jumbo v39, "voltesettingTW"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_att"

    const-string/jumbo v39, "voltesettingsATT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_xaa"

    const-string/jumbo v39, "voltesettingXAA"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_dcm"

    const-string/jumbo v39, "voltesettingDCM"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_usc"

    const-string/jumbo v39, "voltesettingUSC"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "volte_settings_in_mobile_networks_tmo"

    const-string/jumbo v39, "voltesettingTMO"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "rename_volte_menu_oro"

    const-string/jumbo v39, "voltesettingORO"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "rename_volte_menu_ops"

    const-string/jumbo v39, "voltesettingOPS"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "rename_volte_menu_dt"

    const-string/jumbo v39, "voltesettingDT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "rename_volte_menu_cct"

    const-string/jumbo v39, "voltesettingCCT"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "check_non_volte_sim"

    const-string/jumbo v39, "checknonvoltesim"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "check_sim_without_setting"

    const-string/jumbo v39, "checksimwithoutsetting"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_volte_roaming"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v39

    const-string/jumbo v40, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "change_network_mode_with_ctc_card_for_six_mode"

    const-string/jumbo v37, "network_mode_list_chn_type"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_13

    const-string/jumbo v37, "support_all_rat"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_13

    if-eqz v20, :cond_12

    const/16 v37, 0x0

    :goto_e
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "feature_multisim_popup_progress_for_ctc_off"

    const-string/jumbo v37, "network_mode_list_chn_type"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_15

    const-string/jumbo v37, "support_all_rat"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_15

    if-eqz v20, :cond_14

    const/16 v37, 0x0

    :goto_f
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "chn_cdma_network_on_all_rat"

    const-string/jumbo v37, "network_mode_list_chn_type"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_16

    const-string/jumbo v37, "support_all_rat"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    :goto_10
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "chn_cdma_setting_on_all_rat"

    const-string/jumbo v37, "network_mode_list_chn_type"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_17

    const-string/jumbo v37, "support_all_rat"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    :goto_11
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "feature_multisim_popup_progress_simplification"

    const-string/jumbo v39, "feature_multisim"

    invoke-static/range {v39 .. v39}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_wcdma_fdd_lte"

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "support_wcdma_in_slave"

    if-nez v30, :cond_18

    if-nez v32, :cond_18

    const-string/jumbo v37, "SupportWcdmaInSlave"

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    :goto_12
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "disable_change_network_mode_for_none_bolt"

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "force_lte_for_bolt_sim_after_device_reboot_complete"

    const-string/jumbo v37, "ForceLteOnlyForPsOnlyOperatorAfterRebootComplete"

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_1a

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_19

    const/16 v37, 0x0

    :goto_13
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "omadm_lte_forced_nv"

    const-string/jumbo v39, "GlobalForSpr"

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "omadm_lte_forced_not_support_network_mode_popup"

    const-string/jumbo v39, "OmadmLteForcedNotSupportNetworkModePopup"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v38, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v39, "support_data_selection_popup"

    if-nez v18, :cond_1b

    if-nez v33, :cond_1b

    const-string/jumbo v37, "prompt_to_data_roaming"

    invoke-static/range {v37 .. v37}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v37

    :goto_14
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_volte_during_roaming"

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "show_internet_alert_popup_during_call"

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "mobile_data_off_waring_popup"

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "mobile_data_on_waring_popup"

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "support_lte_romaing"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    const/16 v32, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v37, 0x1

    goto/16 :goto_1

    :cond_6
    const/16 v37, 0x1

    goto/16 :goto_2

    :cond_7
    const/16 v37, 0x1

    goto/16 :goto_3

    :cond_8
    const/16 v37, 0x1

    goto/16 :goto_4

    :cond_9
    :try_start_1
    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_lteonly"

    const-string/jumbo v39, "LTEONLY"

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v34

    sget-object v37, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v38, "cust_network_sel_menu4_lteonly"

    const-string/jumbo v39, "LTEONLY"

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_a
    const/16 v37, 0x1

    goto/16 :goto_6

    :cond_b
    const/16 v37, 0x1

    goto/16 :goto_7

    :cond_c
    const/16 v37, 0x1

    goto/16 :goto_8

    :cond_d
    const/16 v37, 0x1

    goto/16 :goto_9

    :cond_e
    const/16 v37, 0x1

    goto/16 :goto_a

    :cond_f
    const/16 v37, 0x1

    goto/16 :goto_b

    :cond_10
    const/16 v37, 0x1

    goto/16 :goto_c

    :cond_11
    const/16 v37, 0x1

    goto/16 :goto_d

    :cond_12
    const/16 v37, 0x1

    goto/16 :goto_e

    :cond_13
    const/16 v37, 0x0

    goto/16 :goto_e

    :cond_14
    const/16 v37, 0x1

    goto/16 :goto_f

    :cond_15
    const/16 v37, 0x0

    goto/16 :goto_f

    :cond_16
    const/16 v37, 0x0

    goto/16 :goto_10

    :cond_17
    const/16 v37, 0x0

    goto/16 :goto_11

    :cond_18
    const/16 v37, 0x1

    goto/16 :goto_12

    :cond_19
    const/16 v37, 0x1

    goto/16 :goto_13

    :cond_1a
    const/16 v37, 0x0

    goto/16 :goto_13

    :cond_1b
    const/16 v37, 0x1

    goto/16 :goto_14
.end method

.method private static makeFeatureForPhoneSearch(Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "CscFeature_VoiceCall_ConfigOpStyleMobileNetworkSettingMenu"

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/boundary/MobileNetworkFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "support_disable_2g_menu"

    const-string/jumbo v6, "+disable2gmenu"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_mobile_networks_cdma_lte_data_service"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_mobile_networks_roaming"

    const-string/jumbo v6, "-networksroaming"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_mobile_networks_enabled_networks"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_mobile_networks_data_enabled"

    const-string/jumbo v6, "-dataenabled"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_enhanced_4glte"

    const-string/jumbo v2, "+enhanced4glte2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_enhanced_lte_services"

    const-string/jumbo v2, "+enhancedlteservices"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_international_enhanced_4glte"

    const-string/jumbo v2, "+internationalenhanced4glte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_mobile_networks_preferred_roaming"

    const-string/jumbo v6, "-preferredroaming"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_global_data_roaming_access"

    const-string/jumbo v2, "+globaldataroamingaccess"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_roaming_state"

    const-string/jumbo v2, "+roamingstate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_signal_strength"

    const-string/jumbo v2, "+signalstrength"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_preferred_networks"

    const-string/jumbo v2, "+preferrednetworks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_enhanced_roaming_mode"

    const-string/jumbo v2, "+enhancedroamingmode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_mobile_networks_volte_call"

    const-string/jumbo v6, "-voltecall"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_roaming_settings"

    const-string/jumbo v2, "+roamingsettings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_mobile_networks_preferred_network_mode"

    const-string/jumbo v6, "-preferrednetworkmode"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_mobile_networks_wifi_call"

    const-string/jumbo v2, "+wificall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_cdma_options_cdma_system_select"

    const-string/jumbo v6, "-cdmasystemselect"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_cdma_options_cdma_subscription"

    const-string/jumbo v6, "-cdmasubscription"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_cdma_options_apn_cdma"

    const-string/jumbo v2, "cdma_apn_enable"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "chn_cdma_network_on_all_rat"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isVoiceCapable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_cdma_options_cdma_activate_device"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_cdma_options_carrier_settings"

    const-string/jumbo v2, "+cdmacarriersettings"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_cdma_options_carrier_sel"

    const-string/jumbo v2, "+cdmacarriersel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v6, "remove_cdma_options_dun"

    const-string/jumbo v2, "support_cdma_dun"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_gsm_umts_options_apn"

    const-string/jumbo v6, "-gsmumtsapn"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_gsm_umts_options_carrier_sel"

    const-string/jumbo v6, "-gsmumtscarriersel"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_gsm_umts_options_global_gsm_umts_system_select"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v5, "remove_gsm_umts_options_s_roaming"

    const-string/jumbo v6, "+sroaming"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "support_soft_sim"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_0
    :goto_e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "remove_mobile_networks_kor_data_enabled"

    const-string/jumbo v5, "-kordataenabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "remove_mobile_networks_kor_roaming"

    const-string/jumbo v5, "-korroaming"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "remove_mobile_networks_kor_lte_roaming"

    const-string/jumbo v5, "-korlteroaming"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "remove_mobile_networks_kor_apn"

    const-string/jumbo v5, "-korapn"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "remove_mobile_networks_kor_carrier_sel"

    const-string/jumbo v5, "-korcarriersel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "remove_mobile_networks_kor_data_network_mode"

    const-string/jumbo v5, "-kordatanetworkmode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "remove_mobile_networks_kor_network_status"

    const-string/jumbo v5, "-kornetworkstatus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "mobile_newtork_style_for_skt"

    const-string/jumbo v5, "mobilenetworkstyleforSKT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "mobile_newtork_style_for_ktt"

    const-string/jumbo v5, "mobilenetworkstyleforKTT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "mobile_newtork_style_for_lgt"

    const-string/jumbo v5, "mobilenetworkstyleforLGT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "mobile_newtork_style_for_kor_open"

    const-string/jumbo v5, "mobilenetworkstyleforKorOpen"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "mobile_newtork_style_for_kor"

    const-string/jumbo v5, "mobile_newtork_style_for_skt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "mobile_newtork_style_for_ktt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "mobile_newtork_style_for_lgt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v4, "mobile_newtork_style_for_kor_open"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    move v2, v4

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto/16 :goto_1

    :cond_4
    move v2, v4

    goto/16 :goto_2

    :cond_5
    move v2, v4

    goto/16 :goto_3

    :cond_6
    move v2, v4

    goto/16 :goto_4

    :cond_7
    move v2, v4

    goto/16 :goto_5

    :cond_8
    move v2, v4

    goto/16 :goto_6

    :cond_9
    move v2, v4

    goto/16 :goto_7

    :cond_a
    move v2, v4

    goto/16 :goto_8

    :cond_b
    move v2, v4

    goto/16 :goto_9

    :cond_c
    move v2, v4

    goto/16 :goto_a

    :cond_d
    move v2, v3

    goto/16 :goto_a

    :cond_e
    move v2, v4

    goto/16 :goto_b

    :cond_f
    move v2, v4

    goto/16 :goto_c

    :cond_10
    move v2, v4

    goto/16 :goto_d

    :cond_11
    move v3, v4

    goto/16 :goto_e
.end method

.method public static makeFeatureForTablet()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "mysound_music_only"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "tablet_device"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v3, "no_receiver_in_call"

    sget-object v4, Lcom/android/phone/TeleServiceFeature;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isAudioHas_Receiver(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static makeFeatureForUsa()V
    .locals 36

    const-string/jumbo v31, "XAS"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_0

    const-string/jumbo v31, "SPR"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    :goto_0
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const-string/jumbo v31, "VZW"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const-string/jumbo v31, "VMU"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    const-string/jumbo v31, "BST"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_1

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_1
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_2
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const-string/jumbo v31, "USC"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const-string/jumbo v31, "MTR"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string/jumbo v31, "ACG"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v31, "XAR"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    const-string/jumbo v31, "CRI"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v31, "TFN"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const-string/jumbo v31, "CSP"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string/jumbo v31, "LRA"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string/jumbo v31, "CCT"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_3

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_3

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_3

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_3

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_3

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_3
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_4

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_4
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_5

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_5

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_5
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string/jumbo v31, "ATT"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_6

    const-string/jumbo v31, "AIO"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    :goto_6
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v31, "AIO"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v31, "XAA"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const-string/jumbo v31, "TMB"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_7

    const-string/jumbo v31, "TMK"

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    :goto_7
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_8

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_8

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_8
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_9
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_a

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_a
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isVoiceCapable()Z

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_b

    return-void

    :cond_0
    const/16 v31, 0x1

    goto/16 :goto_0

    :cond_1
    const/16 v31, 0x1

    goto/16 :goto_1

    :cond_2
    const/16 v31, 0x1

    goto/16 :goto_2

    :cond_3
    const/16 v31, 0x1

    goto/16 :goto_3

    :cond_4
    const/16 v31, 0x1

    goto/16 :goto_4

    :cond_5
    const/16 v31, 0x1

    goto/16 :goto_5

    :cond_6
    const/16 v31, 0x1

    goto/16 :goto_6

    :cond_7
    const/16 v31, 0x1

    goto :goto_7

    :cond_8
    const/16 v31, 0x1

    goto :goto_8

    :cond_9
    const/16 v31, 0x1

    goto :goto_9

    :cond_a
    const/16 v31, 0x1

    goto :goto_a

    :cond_b
    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "feature_usa"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "emergency_dialer_tones"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "video_call_not_support"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_c

    const-string/jumbo v31, "enabled"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_11

    :cond_c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_11

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_11

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_b
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "call_block_number_formatter"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "ecid_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigOpStyleForCallerId"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "ECID"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "emergency_dialer_button_rounded_rectangle"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "feature_cdma_us"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "cdma_additional_setting_enable"

    const-string/jumbo v33, "CDMA_US"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v34

    const-string/jumbo v35, "CscFeature_VoiceCall_ConfigCdmaAdditionalSetting"

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "dtmf_type_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportDtmfTypeSettingMenu"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "usa_cdma_emergency_concept"

    const-string/jumbo v33, "ENABLE"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v34

    const-string/jumbo v35, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyCdma"

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "tmo_echolocate_logger"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_Common_SupportEchoLocate"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "international_dialing_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_DisableInternationalDialMenu"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "auto_retry_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportAutoRetry"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "voice_privacy_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportMenuForVoicePrivacy"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "multiend_point"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportMultiendPoint"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "beep_vibration_for_ussd"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportNotiForUssd"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "tty_to_default_wired_headset_plugged_out"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigDefStatusTTY"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "wiredheadsetpluggedout"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "disable_add_call_mute_hold_during_emergency_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "DisableMuteHold"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "feature_spr"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "config_opmenu_structure"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "Global"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "enable_sprint_extension"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "support_vowifi_spr"

    const-string/jumbo v31, "config_opmenu_structure"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_12

    const-string/jumbo v31, "enable_sprint_extension"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    :goto_c
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "visual_voicemail"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigVvm"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "visual_voicemail_enable"

    const-string/jumbo v33, "com.coremobility.app.vnotes"

    invoke-static/range {v33 .. v33}, Lcom/android/phone/TeleServiceFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "remove_voicemail_category"

    const-string/jumbo v31, "com.coremobility.app.vnotes"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_13

    const-string/jumbo v31, "support_softphone"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    :goto_d
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "system_select_home_only"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "system_select_home_only_entry"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "us_cdma_call_fowarding"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportCdmaCallForwarding"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "urgenct_voicemail_notification_enable"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "support_setting_soft_reset"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v31

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportSoftReset"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isTablet()Z

    move-result v31

    if-eqz v31, :cond_14

    :cond_d
    const/16 v31, 0x0

    :goto_e
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "assisted_dialing_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportAssistDialing"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "feature_vzw"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_15

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_f
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "safety_emergency_contacts"

    const-string/jumbo v33, "CONTACT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v34

    const-string/jumbo v35, "CscFeature_VoiceCall_ConfigOpStyleForEmergContact"

    invoke-virtual/range {v34 .. v35}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "emregency_dialer_home_recent_block"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "BlockRecent"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "support_low_battery_sound_during_call"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_16

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v31

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportLowBattSoundDuringCall"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    :goto_10
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "disconnect_cause_description"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigOpStyleForDisconnectCause"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "emergency_call_active_always"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "setting_search_vzw"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigOpStyleForRoaming"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "settingsearchvzw"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "support_roaming_assistance_setting"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "set_system_setting_for_auto_answer"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-nez v31, :cond_17

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_11
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "ignore_product_type"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "block_dialing_otasp_call"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "feature_att"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "feature_tmo"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "feature_mtr"

    const-string/jumbo v33, "TMK"

    sget-object v34, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v31, "enabled"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v31

    const-string/jumbo v32, "CscFeature_VoiceCall_ConfigOpStyleForMvno"

    invoke-virtual/range {v31 .. v32}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "att_volte_ui"

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v34, "ATT_"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_18

    const-string/jumbo v31, "ATT_"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    :goto_12
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "tmo_volte_ui"

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v34, "TMB_"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_19

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v34, "TMK_"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_19

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v34, "XAR_"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_19

    const-string/jumbo v31, "TMO_"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    :goto_13
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "mpcs_volte_ui"

    sget-object v33, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v34, "MTR_"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "volte_ui"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigViLTESettingMenu"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "USCViLTE"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "us_volte_ui"

    sget-object v33, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v34, "USA_"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "tfn_volte_ui"

    sget-object v33, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v34, "TFN_"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "vzw_volte_ui"

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->opStyleForVolte:Ljava/lang/String;

    const-string/jumbo v34, "VZW_"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1a

    const-string/jumbo v31, "VZW_"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    :goto_14
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "vzw_mvno_volte_ui"

    const-string/jumbo v33, "VZW_"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "call_details_for_hd_icon"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v31

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigOpStyleForHdIcon"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v34, "VZW_HD"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1b

    const-string/jumbo v31, "VZW_"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    :goto_15
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "dialing_capable_while_ims_registration_attempting"

    const-string/jumbo v31, "vzw_volte_ui"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    const-string/jumbo v31, "ro.ril.svlte1x"

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_1c

    :cond_e
    const/16 v31, 0x0

    :goto_16
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "enable_conference_info_banner"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "remove_video_calling"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "ims_voice_conference_vzw"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "ims_voice_conference"

    const-string/jumbo v33, "ims_voice_conference_vzw"

    invoke-static/range {v33 .. v33}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "support_vowifi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "data_usage_limit"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VT_ConfigOpStyleForDataUsageLimit"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "ATT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string/jumbo v31, "enabled"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_10

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "disable_mobile_data_settings"

    const/16 v33, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "ims_rcs"

    const/16 v33, 0x0

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "support_ims_conference_split"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_SupportImsConfSplit"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "silent_redial"

    const-string/jumbo v31, "vzw_volte_ui"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_1d

    const-string/jumbo v31, "support_wfc"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1e

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    :goto_17
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "support_enhanced_4glte_setting_video_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VT_ConfigOpStyleForSetting"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "attvtsetting"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "remove_video_call_setting"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VT_ConfigOpStyleForSetting"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "removevtsetting"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "support_video_call_setting"

    const-string/jumbo v31, "video_call_not_support"

    invoke-static/range {v31 .. v31}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_1f

    const/16 v31, 0x0

    :goto_18
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v32, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v33, "advanced_911_emergency_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v31

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v34, "Advanced911"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_21

    sget v31, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v34, 0x138e4

    move/from16 v0, v31

    move/from16 v1, v34

    if-lt v0, v1, :cond_20

    const/16 v31, 0x1

    :goto_19
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v31, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v32, "emergency_e911_wificall_tmo"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v33

    const-string/jumbo v34, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "E911Wificall"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_11
    const/16 v31, 0x1

    goto/16 :goto_b

    :cond_12
    const/16 v31, 0x0

    goto/16 :goto_c

    :cond_13
    const/16 v31, 0x1

    goto/16 :goto_d

    :cond_14
    const/16 v31, 0x1

    goto/16 :goto_e

    :cond_15
    const/16 v31, 0x1

    goto/16 :goto_f

    :cond_16
    const/16 v31, 0x0

    goto/16 :goto_10

    :cond_17
    const/16 v31, 0x1

    goto/16 :goto_11

    :cond_18
    const/16 v31, 0x1

    goto/16 :goto_12

    :cond_19
    const/16 v31, 0x1

    goto/16 :goto_13

    :cond_1a
    const/16 v31, 0x1

    goto/16 :goto_14

    :cond_1b
    const/16 v31, 0x1

    goto/16 :goto_15

    :cond_1c
    const/16 v31, 0x1

    goto/16 :goto_16

    :cond_1d
    const/16 v31, 0x1

    goto/16 :goto_17

    :cond_1e
    const/16 v31, 0x0

    goto/16 :goto_17

    :cond_1f
    const/16 v31, 0x1

    goto/16 :goto_18

    :cond_20
    const/16 v31, 0x0

    goto :goto_19

    :cond_21
    const/16 v31, 0x0

    goto :goto_19
.end method

.method public static makeFeatureForVT()V
    .locals 17

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isSupportCSVT()Z

    move-result v9

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_IMS_EnableLTEVideoCall"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, "mmtel-video"

    invoke-static {v13}, Lcom/android/phone/PhoneUtilsIMS;->isServiceAvailable(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :cond_0
    :goto_0
    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "psvt_support"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "csvt_supprt"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v15, "vtcommon_enabled"

    if-nez v10, :cond_4

    move v13, v9

    :goto_1
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v15, "vtcommon_hybrid"

    if-eqz v10, :cond_5

    move v13, v9

    :goto_2
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "enable_teleservice_video_provider"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v13, "SKT"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string/jumbo v13, "SKC"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string/jumbo v13, "SKO"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_3
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v13, "KTT"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string/jumbo v13, "KTC"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string/jumbo v13, "KTO"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_4
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v13, "LGT"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string/jumbo v13, "LUC"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string/jumbo v13, "LUO"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_5
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string/jumbo v13, "ANY"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string/jumbo v13, "KOO"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_6
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :goto_7
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v13, "ATT"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string/jumbo v13, "AIO"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_8
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v13, "TMB"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string/jumbo v13, "TMK"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_9
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string/jumbo v13, "VZW"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string/jumbo v13, "CCT"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v13, "MTR"

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v9, :cond_1

    :cond_1
    if-eqz v10, :cond_2

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "ts_rearrange_preset_image_setting"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "concept_kor_common"

    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "concept_usa_att"

    invoke-virtual {v13, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "concept_usa_tmo"

    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "concept_usa_mpcs"

    invoke-virtual {v13, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v15, "concept_usa_vzw"

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :goto_a
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "support_cvo"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v15

    const-string/jumbo v16, "CscFeature_VT_SupportCvo"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    const-string/jumbo v14, "support_merge"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v15

    const-string/jumbo v16, "CscFeature_VT_SupportMerge"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    const/4 v10, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v13, Lcom/android/phone/TeleServiceFeature;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "makeFeatureForVT RuntimeException"

    invoke-static {v13, v14, v0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_8
    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_9
    const/4 v13, 0x1

    goto/16 :goto_6

    :cond_a
    const/4 v13, 0x1

    goto/16 :goto_7

    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_8

    :cond_c
    const/4 v13, 0x1

    goto/16 :goto_9

    :cond_d
    const/4 v13, 0x1

    goto :goto_a
.end method

.method public static putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Lcom/android/phone/TeleServiceFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
