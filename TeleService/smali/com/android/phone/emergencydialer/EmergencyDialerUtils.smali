.class public Lcom/android/phone/emergencydialer/EmergencyDialerUtils;
.super Ljava/lang/Object;
.source "EmergencyDialerUtils.java"


# static fields
.field private static mBootCompleted:Z

.field private static mPendingEmergencyDialer:Z

.field private static mToast:Landroid/widget/Toast;

.field private static mTtfTypefaceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static mTypefaceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mTtfTypefaceHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mTypefaceHashMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDualSimReady()Z
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimReady(I)Z

    move-result v0

    invoke-static {v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimReady(I)Z

    move-result v1

    const-string/jumbo v4, "EmergencyDialerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkDualSimReady -  isSim1State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  isSim2State:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getInsertedSimCard()I

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getActivatedSimNum()I

    move-result v4

    if-ne v4, v7, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static checkPendingEmergencyDialer(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "lost_phone_lock"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startEmergencyDialerActivity(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mPendingEmergencyDialer:Z

    goto :goto_0
.end method

.method public static checkPendingEmergencyDialer(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "ss"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "EmergencyDialerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IccCard.INTENT_KEY_ICC_STATE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->checkPendingEmergencyDialer(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static disableStatusBarLostPhone(Landroid/app/StatusBarManager;)V
    .locals 1

    const/high16 v0, 0x1770000

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    return-void
.end method

.method private static displayToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static existEmergencyContacts(Landroid/content/Context;Z)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-string/jumbo v0, "content://com.android.contacts/groups/title/ICE/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v5, "emergency"

    const-string/jumbo v8, "true"

    invoke-virtual {v0, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v9

    const-string/jumbo v0, "default_emergency"

    aput-object v0, v2, v10

    const-string/jumbo v3, "default_emergency = 2"

    :goto_0
    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :cond_2
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v9

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getActivatedSimNum()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "EmergencyDialerUtils"

    const-string/jumbo v3, "getContext() - No PhoneGlobals here!"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentNetworkPhoneId()I
    .locals 5

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentNetworkSlotId subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    return v1
.end method

.method public static getDefaultVoiceSubId()I
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultDataSubId subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static getDigitsTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEasyModeOn()Z

    move-result v0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v2

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->is12KeyboardModel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v4, :cond_3

    const-string/jumbo v5, "roboto-num3L"

    invoke-static {v5, v7}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    if-nez v2, :cond_0

    if-eqz v4, :cond_2

    const-string/jumbo v5, "roboto-num3R"

    invoke-static {v5, v7}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "SamsungSans-Num4Lv"

    invoke-static {v5}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "SamsungSans-Num3Lv"

    invoke-static {v5}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0
.end method

.method public static getInsertedSimCard()I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getInsertedSimCard: returnValue ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    return v2
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "0"

    :try_start_0
    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static getNumberViewTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEasyModeOn()Z

    move-result v0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkModeType(I)Z

    move-result v2

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->is12KeyboardModel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0cfb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    if-nez v2, :cond_0

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0cfa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "SamsungSans-Num3Lv"

    invoke-static {v5}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "SamsungSans-Num3Lv"

    invoke-static {v5}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0
.end method

.method public static getPhoneCount()I
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getSimState(I)I
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SubscriptionManager.getSubId is null so return defaultVoiceSubId phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getDefaultVoiceSubId()I

    move-result v1

    return v1
.end method

.method private static getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mTtfTypefaceHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/system/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mTtfTypefaceHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mTtfTypefaceHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "EmergencyDialerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No file found for font : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mTypefaceHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "EmergencyDialerUtils"

    const-string/jumbo v3, "Typeface create"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mTypefaceHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v2, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mTypefaceHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    return-object v2
.end method

.method private static is12KeyboardModel(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "EmergencyDialerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is12KeyboardModel - keyboard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / navigation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / hardKeyboardHidden : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget v3, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isAirplaneModeOn()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static isBootCompleted()Z
    .locals 4

    const-string/jumbo v1, "sys.boot_completed"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "EmergencyDialerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBootCompleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / sysBootCompleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mBootCompleted:Z

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEncryptionMode()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEncryptionMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method public static isExtraOrigin(Landroid/content/Intent;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "from_contact"

    const-string/jumbo v1, "origin"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isFolderType(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isKidsHomeMode()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kids_home_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isKnoxOnlyMode()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNoStateInService(Landroid/content/Context;)Z
    .locals 6

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getPhoneCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getSubIdUsingPhoneId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isQualcommModem()Z
    .locals 3

    const-string/jumbo v1, "ril.modem.board"

    const-string/jumbo v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isQualcommModem modemBoard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    const-string/jumbo v1, "MDM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "MSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSimCardInserted(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Icctype is null"

    invoke-static {v1, v3}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;Z)V

    return v2

    :cond_0
    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public static isSimCardReady()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "isSimCardReady :: phone.getIccCard() == null "

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static isSimCardStatusOn(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimCardInserted(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_4

    if-ne p0, v4, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "phone2_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_2

    if-nez p0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "phone1_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSimReady(I)Z
    .locals 4

    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getSimState(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getSimState(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isSoftPhoneEnabled(Landroid/content/Context;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    const-string/jumbo v3, "EmergencyDialerUtils"

    const-string/jumbo v4, "isSoftPhoneEnabled"

    invoke-static {v3, v4, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v3, "content://com.sec.vsim.attsoftphone.settings/account/active_account"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, 0x1

    const-string/jumbo v3, "support_softphone"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v2, "EmergencyDialerUtils"

    const-string/jumbo v3, "SoftPhone is off"

    invoke-static {v2, v3, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v5

    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v2, "EmergencyDialerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " active users"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v7, 0x0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    const-string/jumbo v2, "EmergencyDialerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEnable is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v7

    :cond_2
    const-string/jumbo v2, "EmergencyDialerUtils"

    const-string/jumbo v3, "cursor is null."

    invoke-static {v2, v3, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static launchEmergencyContactList(Landroid/app/Activity;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.contacts.action.SHOW_EMERGENCY_DIALER_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "EmergencyDialerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchEmergencyContactList: default only : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "default_only"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    const-string/jumbo v1, "lost_phone_lock"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isExtraOrigin(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public static launchEmergencyContactList(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isNoStateInService(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->existEmergencyContacts(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const v2, 0x7f0d0889

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->displayToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, v1}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->launchEmergencyContactList(Landroid/app/Activity;Z)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "EmergencyDialerUtils"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "EmergencyDialerUtils"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static selectSimForEmergency(IZ)I
    .locals 17

    move/from16 v5, p0

    const/4 v15, 0x0

    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    const/4 v15, 0x1

    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v8

    const/4 v15, 0x2

    new-array v10, v15, [I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v15

    const/16 v16, 0x0

    aput v15, v10, v16

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v14, v16

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v15

    const/16 v16, 0x1

    aput v15, v10, v16

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getSimState(I)I

    move-result v3

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getSimState(I)I

    move-result v4

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimCardStatusOn(I)Z

    move-result v1

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimCardStatusOn(I)Z

    move-result v2

    const/4 v7, 0x0

    const/4 v15, 0x5

    if-ne v3, v15, :cond_3

    move v11, v1

    :goto_0
    const/4 v15, 0x5

    if-ne v4, v15, :cond_4

    move v12, v2

    :goto_1
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isQualcommModem()Z

    move-result v9

    const-string/jumbo v15, "qcom_cross_mapping"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string/jumbo v15, "persist.radio.multisim.stackid"

    const-string/jumbo v16, "NONE"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v15, "1,0"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v7, 0x1

    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "selectSimForEmergency crossMapping:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", crossMappingSwitched:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "selectSimForEmergency currentSimId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", subId1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", subId2:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v14, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", defaultVoiceSubId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "selectSimForEmergency serviceState[SIM_SLOT_1]:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", [SIM_SLOT_2]:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "selectSimForEmergency SimState1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", SimState2:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "selectSimForEmergency SimCardStatusOn1:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", SimCardStatusOn2:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "selectSimForEmergency sim1IsReady:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", sim2IsReady:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "selectSimForEmergency isQualcommModem:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    const-string/jumbo v15, "selectSimForEmergency both sim states are ready so originate call via current sim"

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return v5

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_5
    if-eqz v11, :cond_6

    if-eqz v12, :cond_7

    :cond_6
    if-nez v11, :cond_8

    if-eqz v12, :cond_8

    const-string/jumbo v15, "selectSimForEmergency sim1 is not ready / sim2 is ready so orignate call via slot2"

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const-string/jumbo v15, "selectSimForEmergency sim1 is ready / sim2 is not ready so orignate call via slot1"

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    if-eqz v9, :cond_c

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isAirplaneModeOn()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    aget v15, v13, v15

    if-eq v8, v15, :cond_9

    const/4 v15, 0x0

    aget v15, v14, v15

    if-eq v8, v15, :cond_9

    const/4 v15, 0x1

    if-ne v3, v15, :cond_9

    if-nez v4, :cond_9

    const-string/jumbo v15, "selectSimForEmergency airplane mode and only sim card is inserted in slot2 so originate call via slot2"

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_9
    const-string/jumbo v15, "qcom_cross_mapping"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    if-eqz v7, :cond_a

    const-string/jumbo v15, "selectSimForEmergency both sim cards are not ready and slot2 is in multimode so originate call via slot2"

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    const-string/jumbo v15, "selectSimForEmergency both sim cards are not ready and slot1 is in multimode so originate call via slot1"

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    const-string/jumbo v15, "selectSimForEmergency both sim cards are not ready and so slot1 is only available to call"

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_2

    :cond_c
    if-nez v9, :cond_2

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimCardInserted(I)Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isSimCardInserted(I)Z

    move-result v15

    if-nez v15, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2
.end method

.method public static sendDualmodeSettingBroadcast(Landroid/content/Context;I)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "DSNETWORK"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "EmergencyDialerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDualmodeSettingBroadcast - DSNETWORK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "DSNETWORK"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "ACTION_DUALMODE_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static setBootCompleted(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mBootCompleted:Z

    return-void
.end method

.method public static startEmergencyDialerActivity(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "support_softphone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    const-string/jumbo v2, "EmergencyDialerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEmergencyDialerActivity - isVoiceCapable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_2

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startPendingEmergencyDialerActivity(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->setBootCompleted(Z)V

    const-string/jumbo v0, "lost_phone_lock"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mPendingEmergencyDialer:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isLostPhoneLock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->mPendingEmergencyDialer:Z

    const-string/jumbo v0, "EmergencyDialerUtils"

    const-string/jumbo v1, "startPendingEmergencyDialerActivity startEmergencyDialerActivity "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startEmergencyDialerActivity(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d09fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string/jumbo v1, "EmergencyDialerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity for adding calls isn\'t found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startSafeActivity(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static updateLostPhoneLock(Landroid/content/Context;Z)V
    .locals 2

    invoke-static {p1}, Lcom/android/phone/TeleServiceSystemDB;->setLostPhoneLock(Z)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startEmergencyDialerActivity(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.Emergencydialer.LOST_PHONE_UNLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
