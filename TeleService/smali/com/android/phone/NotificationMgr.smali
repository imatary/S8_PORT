.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl0;,
        Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl1;,
        Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl2;,
        Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl3;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/NotificationMgr;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mContext:Landroid/content/Context;

.field private mDataDisconnectedRoamingNotification:Landroid/app/Notification;

.field private mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

.field private mMwiVisible:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationComponent:Landroid/content/ComponentName;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhone1:Lcom/android/internal/telephony/Phone;

.field private mPhone2:Lcom/android/internal/telephony/Phone;

.field private mSelectedSimNumber:I

.field private mSelectedUnavailableNotify:Z

.field private mSelectedUnavailableNotify2:Z

.field private mSpamCallsFilterNotification:Landroid/app/Notification;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTencentFunctionsFilterNotification:Landroid/app/Notification;

.field private mTencentPNLFilterNotification:Landroid/app/Notification;

.field private mTtyVzwNotification:Landroid/app/Notification;

.field private mUserManager:Landroid/os/UserManager;

.field private mWfcHelpNotification:Landroid/app/Notification;

.field private preNetworkSelection:Ljava/lang/String;

.field private preNetworkSelection2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "number"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedSimNumber:I

    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify2:Z

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection2:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getInstance()Lcom/android/phone/mobilenetworks/controller/IntentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01f0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationComponent:Landroid/content/ComponentName;

    const-string/jumbo v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->contactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->memoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->registerIntentReceivers()V

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private applyIcon(ILandroid/widget/RemoteViews;)V
    .locals 8

    const v1, 0x7f100249

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v7

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    move-object v0, p2

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    const-string/jumbo v0, "setBackgroundResource"

    const v3, 0x7f020158

    invoke-virtual {p2, v1, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c01cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object v0, p2

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_0
    return-void
.end method

.method private cancelAsUser(II)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v5, 0x11

    if-ne p2, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ne v1, v6, :cond_2

    const/4 v5, 0x4

    if-eq p2, v5, :cond_0

    :cond_2
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private cancelNetworkSelection()V
    .locals 7

    const-string/jumbo v4, "cancelNetworkSelection()..."

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cancelNetworkSelection()...user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private cancelNetworkSelection(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cancelNetworkSelection() - subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/16 v3, 0xce

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    goto :goto_0
.end method

.method private createDataOffNotification()Landroid/app/Notification;
    .locals 14

    const/high16 v13, 0x8000000

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0d12

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0d13

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0d14

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.phone.intent.action.DATA_OFF_NOTIFCATION_TURN_ON"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v11, v4, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v11, v3, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v10, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f020175

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-static {v12}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const/16 v10, 0x14

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v11, v0, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iget-object v9, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "headsup"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5
.end method

.method private getCSVideoCfi()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "getVideoCallForwardingIndicator"

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    return v2
.end method

.method private handleIntentCallBack(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleIntentCallBack: onReceive - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    :goto_1
    const-string/jumbo v3, "support_spam_call"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "phone_number_locator_tencent"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mTencentFunctionsFilterNotification:Landroid/app/Notification;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelTencentFunctionsFilterNotification()V

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showTencentFunctionsFilterNotification()V

    :cond_2
    const-string/jumbo v3, "show_wfc_help_noti"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mWfcHelpNotification:Landroid/app/Notification;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelWfcHelpNotification()V

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showWfcHelpNotification()V

    :cond_3
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mSpamCallsFilterNotification:Landroid/app/Notification;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelSpamCallsFilterNotification()V

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showSpamCallsFilterNotification()V

    :cond_4
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mTencentPNLFilterNotification:Landroid/app/Notification;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelTencentPNLFilterNotification()V

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showTencentPNLFilterNotification()V

    :cond_5
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mTtyVzwNotification:Landroid/app/Notification;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelVzwTtyNotification()V

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showVzwTtyNotification()V

    :cond_6
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mDataDisconnectedRoamingNotification:Landroid/app/Notification;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->cancelDataDisconnectedRoaming()V

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "android.intent.action.CSC_LOADED_VOICEMAIL_DONE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "SLOT_ID"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Receiver CSC_LOADED_VOICEMAIL_DONE for subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    aget v3, v2, v7

    invoke-virtual {p0, v3}, Lcom/android/phone/NotificationMgr;->refreshMwi(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "com.samsung.android.phone.intent.action.DATA_OFF_NOTIFCATION_TURN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {p0, v3, v6}, Lcom/android/phone/NotificationMgr;->updateCfi(IZ)V

    goto/16 :goto_1
.end method

.method static init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;
    .locals 4

    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isRemoveVTCF()Z
    .locals 1

    const-string/jumbo v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyAsUser(IILandroid/app/Notification;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v5, 0x11

    if-ne p2, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ne v1, v6, :cond_2

    const/4 v5, 0x4

    if-eq p2, v5, :cond_0

    :cond_2
    if-ltz v1, :cond_0

    :cond_3
    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2, p3, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private registerIntentReceivers()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.samsung.intent.action.SIMHOTSWAP"

    new-instance v2, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl0;-><init>(Lcom/android/phone/NotificationMgr;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    new-instance v2, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl1;

    invoke-direct {v2, p0}, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl1;-><init>(Lcom/android/phone/NotificationMgr;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "android.intent.action.CSC_LOADED_VOICEMAIL_DONE"

    new-instance v2, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl2;

    invoke-direct {v2, p0}, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl2;-><init>(Lcom/android/phone/NotificationMgr;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.samsung.android.phone.intent.action.DATA_OFF_NOTIFCATION_TURN_ON"

    new-instance v2, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl3;

    invoke-direct {v2, p0}, Lcom/android/phone/NotificationMgr$-void_registerIntentReceivers__LambdaImpl3;-><init>(Lcom/android/phone/NotificationMgr;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    return-void
.end method

.method private sendNotificationCustomComponent(Ljava/lang/Integer;Ljava/lang/String;Landroid/app/PendingIntent;Z)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "android.telephony.action.SHOW_VOICEMAIL_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "android.telephony.extra.NOTIFICATION_COUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "android.telephony.extra.VOICEMAIL_NUMBER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_4

    const-string/jumbo v1, "android.telephony.extra.LAUNCH_VOICEMAIL_SETTINGS_INTENT"

    :goto_0
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_4
    const-string/jumbo v1, "android.telephony.extra.CALL_VOICEMAIL_INTENT"

    goto :goto_0

    :cond_5
    return v2
.end method

.method private setCallForwardingClassName(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    const-string/jumbo v0, "video_call_not_support"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "psvt_support"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->isRemoveVTCF()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "show_callforward_allcalls_string"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "feature_att"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "com.android.phone"

    const-string/jumbo v1, "com.android.phone.GsmUmtsCallForwardOptions"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object p1

    :cond_1
    const-string/jumbo v0, "com.android.phone"

    const-string/jumbo v1, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showNetworkSelection(Ljava/lang/String;I)V
    .locals 13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showNetworkSelection("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")...subId :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v9, "gsm.sim.state"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x108008a

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0462

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const v12, 0x7f0d0463

    invoke-virtual {v10, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10200000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v9, "mobile_newtork_style_for_kor"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "ABSENT"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    const-string/jumbo v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.android.phone"

    const-string/jumbo v11, "com.android.phone.MobileNetworkSettingsTab"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v9, "NetworkSetting"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v9, "phoneId"

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showNetworkSelection phoneId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v4, 0x6

    const-string/jumbo v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/16 v4, 0xce

    :cond_1
    const/4 v1, 0x0

    const-string/jumbo v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/high16 v10, 0x8000000

    invoke-static {v9, v4, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_1
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.android.phone"

    const-string/jumbo v11, "com.android.phone.NetworkSetting"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    new-instance v9, Landroid/content/ComponentName;

    const-string/jumbo v10, "com.android.phone"

    const-string/jumbo v11, "com.android.phone.NetworkSetting"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v9, "sub_id"

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v1

    :goto_4
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "showNetworkSelection()...user:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v4, v10, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    return-void
.end method


# virtual methods
.method synthetic -com_android_phone_NotificationMgr_lambda$1(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NotificationMgr_lambda$2(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NotificationMgr_lambda$3(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_NotificationMgr_lambda$4(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method ShowInternationalRomingNoti()V
    .locals 14

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string/jumbo v9, "ShowInternationalRomingNoti()..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v4, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v12, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0384

    invoke-virtual {v9, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x108008a

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0d037e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00ac

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    new-instance v11, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v11}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v11, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v1

    :goto_2
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v9, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11, v5, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    move-object v9, v10

    goto :goto_2

    :cond_3
    return-void
.end method

.method public canceLteOnly()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->hideLteOnlyNotification()V

    return-void
.end method

.method public cancelAllowDataAccess()V
    .locals 2

    const-string/jumbo v0, "cancelAllowDataAccess()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x390

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->cancelAllowDataAccess(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method public cancelDataDisconnectedRoaming()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    return-void
.end method

.method public cancelDisableAutoRejectNotification()V
    .locals 2

    const-string/jumbo v0, "cancelDisableAutoRejectNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelDisableBlockModeNotification()V
    .locals 2

    const-string/jumbo v0, "cancelDisableBlockModeNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelEmegencyCallbackMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x38f

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->cancelEmegencyCallbackMode(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method public cancelSpamCallsFilterNotification()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "cancelSpamCallsFilterNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mSpamCallsFilterNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public cancelSpamCallsFilterNotificationForEM()V
    .locals 4

    const-string/jumbo v0, "cancelSpamCallsFilterNotificationForEM()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public cancelTencentFunctionsFilterNotification()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "cancelTencentFunctionFilterNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mTencentFunctionsFilterNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v2, 0x18

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public cancelTencentFunctionsFilterNotificationForEM()V
    .locals 4

    const-string/jumbo v0, "cancelTencentFunctionFilterNotificationForEM()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public cancelTencentPNLFilterNotification()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "cancelTencentPNLFilterNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mTencentPNLFilterNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public cancelTencentPNLFilterNotificationForEM()V
    .locals 4

    const-string/jumbo v0, "cancelTencentPNLFilterNotificationForEM()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public cancelVzwTtyNotification()V
    .locals 2

    const-string/jumbo v0, "cancelVzwTtyNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mTtyVzwNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelWfcHelpNotification()V
    .locals 2

    const-string/jumbo v0, "cancelWfcHelpNotification()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mWfcHelpNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public cancelnternationalRoaming()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->hideInternationalRomingNoti()V

    return-void
.end method

.method public getDisableAutoRejectStatus()Z
    .locals 3

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cleared_auto_reject_notify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getDisableBlockModeStatus()Z
    .locals 3

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "cleared_block_mode_notify"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method hideDataCallSetupFailed()V
    .locals 2

    const-string/jumbo v0, "hideDataCallSetupFailed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method hideDataDisconnectDomestic()V
    .locals 2

    const-string/jumbo v0, "hideDataDisconnectDomestic()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mDataDisconnectedRoamingNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mDataDisconnectedRoamingNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method hideInternationalRomingNoti()V
    .locals 2

    const-string/jumbo v0, "hideInternationalRomingNoti()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method hideLteOnlyNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method hideRoamingNotification()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public isDataRoaming()Z
    .locals 3

    const-string/jumbo v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "gsm.operator.isroaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public notifyAllowDataAccess()V
    .locals 3

    const-string/jumbo v0, "notifyAllowDataAccess()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x390

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->notifyAllowDataAccess(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    return-void
.end method

.method notifyDataDisconnectDomestic()V
    .locals 6

    const v5, 0x7f0d078d

    const-string/jumbo v2, "notifyDataDisconnectDomestic()..."

    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "8"

    const-string/jumbo v3, "ril.ActivePDPRejectCause"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0d078c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string/jumbo v2, "ril.ActivePDPRejectCause"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectDomestic()V

    goto :goto_0
.end method

.method public notifyDataDisconnectedRoaming()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    return-void
.end method

.method public notifyDisableAutoRejectNotification()V
    .locals 8

    const v7, 0x7f0d0546

    const/16 v6, 0xd

    const-string/jumbo v3, "notifyDisableAutoRejectNotification()..."

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "android.phone.callsettings.extra.TYPE_OF_REJECT_MODE"

    const-string/jumbo v4, "auto_reject"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-static {v3, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0528

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0200bf

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public notifyDisableBlockModeNotification()V
    .locals 8

    const v7, 0x7f0d0548

    const/16 v6, 0xe

    const-string/jumbo v3, "notifyDisableBlockModeNotification()..."

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "android.phone.callsettings.extra.TYPE_OF_REJECT_MODE"

    const-string/jumbo v4, "block_mode"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-static {v3, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0d054a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0200c0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyEmegencyCallbackMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x38f

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->notifyEmegencyCallbackMode(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    return-void
.end method

.method public notifyInternationalRoaming()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->ShowInternationalRomingNoti()V

    return-void
.end method

.method public notifyLteOnly()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showLteOnlyNoti()V

    return-void
.end method

.method refreshMwi(I)V
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshMwi subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/phone/NotificationMgr;->updateMwi(IZZ)V

    :cond_2
    return-void
.end method

.method sendClearVoicemailInfo()V
    .locals 3

    const-string/jumbo v1, "sendClearVoicemailInfo()..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.accessory.intent.action.CHECK_NOTIFICATION_ITEM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "NOTIFICATION_ID"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "NOTIFICATION_PACKAGE_NAME"

    const-string/jumbo v2, "com.android.phone.voicemail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "NOTIFICATION_ITEM_ID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method sendVoiceMailInfo(ZIJLjava/lang/String;)V
    .locals 9

    const/4 v7, 0x1

    sget-object v4, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendVoiceMailInfo count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, ""

    if-ge v7, p2, :cond_0

    const/16 v4, 0xff

    if-ge p2, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0d09f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.accessory.intent.action.ALERT_NOTIFICATION_ITEM"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "NOTIFICATION_ID"

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "NOTIFICATION_PACKAGE_NAME"

    const-string/jumbo v5, "com.android.phone.voicemail"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "NOTIFICATION_ITEM_ID"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "NOTIFICATION_TIME"

    invoke-virtual {v0, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v4, "NOTIFICATION_MAIN_TEXT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "NOTIFICATION_LAUNCH_INTENT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "NOTIFICATION_VM_COUNT"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "NOTIFICATION_VM_NUMBER"

    invoke-virtual {v0, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.DIAL"

    goto :goto_0
.end method

.method public setCancelNetworkSelection()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    return-void
.end method

.method showDataCallSetupFailed()V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "showDataCallSetupFailed()..."

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ACTION_DATA_CALL_SETUP_RETRY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x108008a

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0d06ff

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0831

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0xf

    invoke-virtual {v5, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method showDataDisconnectedRoaming()V
    .locals 13

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string/jumbo v9, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v9, "support_international_roaming_notification"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "skip showDataDisconnectedRoaming() because of CSC feature"

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v9, "mobile_newtork_style_for_lgt"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "roaming_auto_dial"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showLUCDataDisconnectedRoaming()V

    return-void

    :cond_1
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v4, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v9, "data_roaming_style_for_kor"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v9, "com.android.settings"

    const-string/jumbo v11, "com.android.settings.Settings$TRoamingSettingsActivity"

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v9, "roaming_enhancement"

    invoke-static {v9}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getRoamingIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    :cond_3
    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v12, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0383

    invoke-virtual {v9, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x108008a

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0d037e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00ac

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/NotificationMgr;->mDataDisconnectedRoamingNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v1

    :goto_2
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v9, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11, v5, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_6
    move-object v9, v10

    goto :goto_2

    :cond_7
    return-void
.end method

.method showLUCDataDisconnectedRoaming()V
    .locals 15

    const v14, 0x7f0d078b

    const v13, 0x7f0d037e

    const/high16 v12, 0x10000000

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v7, "showLUCDataDisconnectedRoaming()..."

    invoke-direct {p0, v7}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108008a

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0383

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "data_roaming"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "lte_roaming_mode_on"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_1

    const/4 v4, 0x1

    :goto_1
    const-string/jumbo v7, "27"

    const-string/jumbo v8, "ril.ActivePDPRejectCause"

    const-string/jumbo v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "com.android.settings.Settings$GlobalRoamingSettingsActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0d078a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_2
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/NotificationMgr;->mDataDisconnectedRoamingNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mDataDisconnectedRoamingNotification:Landroid/app/Notification;

    const/4 v9, 0x5

    invoke-virtual {v7, v9, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_6

    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0831

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "ril.ActivePDPRejectCause"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string/jumbo v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    :goto_3
    const-string/jumbo v7, "ril.ActivePDPRejectCause"

    const-string/jumbo v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/16 v8, 0x1b

    if-le v7, v8, :cond_4

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rejectstate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , romingRejectText :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v1, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "com.android.settings"

    const-string/jumbo v8, "com.android.settings.Settings$GlobalRoamingSettingsActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0c82

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0d0c83

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_2
.end method

.method showLteOnlyNoti()V
    .locals 14

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string/jumbo v9, "showLteOnlyNoti()..."

    invoke-direct {p0, v9}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v4, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v9, v12, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0d09dd

    invoke-virtual {v9, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v9, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x108008a

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0d076e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00ac

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    new-instance v11, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v11}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v11, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9, v13}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v1

    :goto_2
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v9, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11, v5, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    move-object v9, v10

    goto :goto_2

    :cond_3
    return-void
.end method

.method public showSpamCallsFilterNotification()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0d0be4

    const/4 v5, 0x0

    const-string/jumbo v3, "showSpamCallsFilterNotification()..."

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "tencent_functions_type"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020044

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0be3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mSpamCallsFilterNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mSpamCallsFilterNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v6, 0x15

    invoke-virtual {v3, v7, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public showSpamCallsFilterNotificationForEM()V
    .locals 1

    const-string/jumbo v0, "showSpamCallsFilterNotificationForEM()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mSpamCallsFilterNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showSpamCallsFilterNotification()V

    :cond_0
    return-void
.end method

.method public showTencentFunctionsFilterNotification()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0d06a8

    const/4 v5, 0x0

    const-string/jumbo v3, "showTencentFunctionFilterNotification()..."

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020042

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0d06a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mTencentFunctionsFilterNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mTencentFunctionsFilterNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v6, 0x18

    invoke-virtual {v3, v7, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public showTencentFunctionsFilterNotificationForEM()V
    .locals 1

    const-string/jumbo v0, "showTencentFunctionFilterNotificationForEM()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mTencentFunctionsFilterNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showTencentFunctionsFilterNotification()V

    :cond_0
    return-void
.end method

.method public showTencentPNLFilterNotification()V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f0d06a5

    const/4 v5, 0x0

    const-string/jumbo v3, "showTencentPNLFilterNotification()..."

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "tencent_functions_type"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020043

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0693

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mTencentPNLFilterNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mTencentPNLFilterNotification:Landroid/app/Notification;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v6, 0x17

    invoke-virtual {v3, v7, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public showTencentPNLFilterNotificationForEM()V
    .locals 1

    const-string/jumbo v0, "showTencentPNLFilterNotificationForEM()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mTencentPNLFilterNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->showTencentPNLFilterNotification()V

    :cond_0
    return-void
.end method

.method public showVzwTtyNotification()V
    .locals 8

    const v7, 0x7f0d08f1

    const v6, 0x7f0d08f0

    const/4 v5, 0x0

    const-string/jumbo v3, "showVzwTtyNotification()..."

    invoke-direct {p0, v3}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/phone/TtyNotificationDialog;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020185

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0d08ef

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/NotificationMgr;->mTtyVzwNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mTtyVzwNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mTtyVzwNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->semFlags:I

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mTtyVzwNotification:Landroid/app/Notification;

    const/16 v5, 0x16

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method public showWfcHelpNotification()V
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v4, "showWfcHelpNotification()..."

    invoke-direct {p0, v4}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.android.phone"

    const-string/jumbo v5, "com.android.phone.callsettings.WifiCallHelpActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "isFromNoti"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0d04bd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->getWiFiCallingTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0d04ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v4, Landroid/app/Notification;

    const-wide/16 v6, 0x0

    const v5, 0x7f0201c9

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v4, p0, Lcom/android/phone/NotificationMgr;->mWfcHelpNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mWfcHelpNotification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mWfcHelpNotification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mWfcHelpNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mWfcHelpNotification:Landroid/app/Notification;

    const/16 v6, 0x19

    invoke-virtual {v4, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public updateCdmaCfi(Z)V
    .locals 13

    const/16 v12, 0x12

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCdmaCfi(): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f02017b

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0310

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0314

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x14000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    const-string/jumbo v6, "com.android.phone"

    const-string/jumbo v8, "com.android.phone.CdmaCallForwardOptions"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v6, "SS_Type"

    const-string/jumbo v8, "forwarding"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->isOwner()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v1

    :goto_2
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v12, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "com.android.phone"

    const-string/jumbo v8, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    move-object v6, v7

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v7, v12, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method updateCfi(IZ)V
    .locals 21

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateCfi(): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/android/phone/NotificationMgr;->updateCfiMultiSIM(IZ)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v16

    const/4 v15, 0x0

    const-string/jumbo v17, "video_call_not_support"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string/jumbo v17, "psvt_support"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_1
    const-string/jumbo v17, "show_callforward_allcalls_string"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->getCSVideoCfi()Z

    move-result v15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateCfi(): - videoI : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateCfi() - visible : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " / voiceI : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " / videoI : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    if-nez v16, :cond_3

    if-eqz v15, :cond_6

    :cond_3
    const/4 v9, 0x1

    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "updateCfi() - internalVisible : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    if-eqz v9, :cond_d

    if-eqz v16, :cond_4

    if-nez v15, :cond_5

    :cond_4
    const-string/jumbo v17, "show_callforward_allcalls_string"

    invoke-static/range {v17 .. v17}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0d0314

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    if-nez v11, :cond_9

    sget-object v17, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Found null subscription info for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0d05b4

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0d05b5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    new-instance v17, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f02017b

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v17

    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0d0310

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v17, 0x14000000

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/NotificationMgr;->setCallForwardingClassName(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/phone/SubscriptionInfoHelper;->addExtrasToIntent(Landroid/content/Intent;Landroid/telephony/SubscriptionInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v14

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_f

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v17

    if-eqz v17, :cond_b

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0d0310

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v17, v6

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    const/16 v20, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_4

    :cond_c
    const/16 v17, 0x0

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v14

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_f

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v17

    if-eqz v17, :cond_e

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_7

    :cond_f
    return-void
.end method

.method updateCfiMultiSIM(IZ)V
    .locals 27

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "updateCfiMultiSIM(): "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v24, "feature_multisim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const-string/jumbo v24, "video_call_not_support"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    const-string/jumbo v24, "psvt_support"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    const-string/jumbo v24, "feature_chn"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    :cond_1
    :goto_0
    const-string/jumbo v24, "feature_multisim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v23

    if-nez v22, :cond_2

    if-eqz v20, :cond_e

    :cond_2
    if-nez v23, :cond_3

    if-eqz v21, :cond_e

    :cond_3
    const/4 v14, 0x1

    :goto_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "updateCfiMultiSIM() - voiceI : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " / voiceISim2 : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " / videoI : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " / videoISim2 : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :goto_2
    if-nez v22, :cond_4

    if-nez v20, :cond_4

    const-string/jumbo v24, "feature_multisim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    if-nez v22, :cond_4

    if-nez v20, :cond_4

    if-nez v23, :cond_4

    if-eqz v21, :cond_13

    :cond_4
    const/4 v13, 0x1

    :goto_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "updateCfiMultiSIM() - internalVisible : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    if-eqz v13, :cond_1c

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v24, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v24, 0x14000000

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/NotificationMgr;->setCallForwardingClassName(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v12

    if-eqz v22, :cond_14

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0d0314

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    const v8, 0x7f02017b

    const-string/jumbo v24, "feature_multisim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    if-eqz v15, :cond_16

    const-string/jumbo v24, "CallSettingTab"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v24, 0x0

    const/16 v25, 0x67

    invoke-static/range {v24 .. v25}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v8

    :cond_5
    :goto_5
    if-nez v16, :cond_6

    move-object v9, v7

    :cond_6
    if-nez v15, :cond_9

    if-eqz v23, :cond_7

    if-eqz v21, :cond_7

    if-eqz v15, :cond_17

    :cond_7
    if-nez v23, :cond_8

    if-eqz v16, :cond_18

    if-eqz v22, :cond_18

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0d05b4

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_6
    move-object v7, v10

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/high16 v26, 0x8000000

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0d0310

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string/jumbo v24, "feature_multisim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1b

    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v19

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "subId : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " / slotId : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    if-eqz v15, :cond_19

    const-string/jumbo v24, "SIM1 only"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v24

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    const/16 v24, 0x11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->cancelAsUser(II)V

    :cond_a
    :goto_7
    return-void

    :cond_b
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v24, "getVideoCallForwardingIndicator"

    const/16 v25, 0x0

    aput-object v24, v17, v25

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v18

    const-string/jumbo v24, "feature_multisim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone1:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone2:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    goto/16 :goto_0

    :cond_e
    if-nez v23, :cond_10

    if-nez v21, :cond_10

    if-nez v22, :cond_f

    if-eqz v20, :cond_11

    :cond_f
    const-string/jumbo v24, "1"

    const-string/jumbo v25, "ril.MSIMM"

    const-string/jumbo v26, "0"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    :cond_10
    const/16 v16, 0x1

    goto/16 :goto_1

    :cond_11
    const/4 v15, 0x1

    goto/16 :goto_1

    :cond_12
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "updateCfiMultiSIM() - voiceI : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " / videoI : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_14
    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0d05b4

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0d05b5

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_16
    if-eqz v16, :cond_5

    const-string/jumbo v24, "CallSettingTab"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v24, 0x1

    const/16 v25, 0x67

    invoke-static/range {v24 .. v25}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v8

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0d0314

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0d05b5

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    :cond_19
    if-eqz v16, :cond_1a

    const-string/jumbo v24, "SIM2 only"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/high16 v26, 0x8000000

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0d0310

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v24

    const/16 v25, 0x11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->cancelAsUser(II)V

    goto/16 :goto_7

    :cond_1a
    if-eqz v14, :cond_a

    const-string/jumbo v24, "Dual SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v24, "CallSettingTab"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v24, 0x0

    const/16 v25, 0x67

    invoke-static/range {v24 .. v25}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/high16 v26, 0x8000000

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0d0310

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v24

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    const-string/jumbo v24, "CallSettingTab"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v24, 0x1

    const/16 v25, 0x67

    invoke-static/range {v24 .. v25}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimImage(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/high16 v26, 0x8000000

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    new-instance v24, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0d0310

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v24

    const/16 v25, 0x11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    goto/16 :goto_7

    :cond_1b
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v24

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/NotificationMgr;->notifyAsUser(IILandroid/app/Notification;)V

    goto/16 :goto_7

    :cond_1c
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->cancelAsUser(II)V

    const-string/jumbo v24, "feature_multisim"

    invoke-static/range {v24 .. v24}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, 0x11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/NotificationMgr;->cancelAsUser(II)V

    goto/16 :goto_7
.end method

.method public updateDisableAutoRejectStatus(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "cleared_auto_reject_notify"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateDisableBlockModeStatus(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "cleared_block_mode_notify"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateMobileDataNotification(Z)V
    .locals 5

    const/16 v4, 0x461

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateMobileDataNotification, mNotificationManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMobileDataNotification : isTurnedOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->createDataOffNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method updateMwi(IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/phone/NotificationMgr;->updateMwi(IZZ)V

    return-void
.end method

.method updateMwi(IZZ)V
    .locals 46

    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v39, "Called updateMwi() on non-voice-capable device! Ignoring..."

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v5, "feature_spr"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "com.coremobility.app.vnotes"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string/jumbo v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/services/telephony/operator/usa/JanskyCallerInfo;->isEnableNsdsServiceStatus()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "com.samsung.tmovvm"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v39, "updateMwi() is skip. The operator VVM application was enabled."

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v5, "mobile_newtork_style_for_kor"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isKORSIM()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v39, "updateMwi() is skip. The voice mail notification does not support."

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v21

    if-eqz p2, :cond_6

    if-eqz v21, :cond_6

    new-instance v25, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;-><init>(Landroid/content/Context;)V

    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isNotificationsChannelActive(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v39, "Notifications channel active for visual voicemail, hiding mwi."

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x0

    :cond_5
    const-string/jumbo v5, "feature_mtr"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "com.tmobile.vvm.application"

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsCommon;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    :goto_0
    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "updateMwi(): subId "

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v42, " update to "

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mMwiVisible:Landroid/util/ArrayMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eqz p2, :cond_21

    if-nez v21, :cond_8

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Found null phone for: "

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v39, "updateMwi(): The VM notification update for the MTR model."

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x1

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v30

    if-nez v30, :cond_9

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Found null subscription info for: "

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v29

    const-string/jumbo v5, "urgenct_voicemail_notification_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/operator/usa/TelephonyExtension;->getVmPriorityCdma(Landroid/content/Context;)I

    move-result v38

    const/4 v5, 0x2

    move/from16 v0, v38

    if-ne v0, v5, :cond_13

    const v27, 0x7f020179

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v39, 0x7f0d045d

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v5, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/operator/usa/TelephonyExtension;->isVoicemailNumberDefault(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_17

    const-string/jumbo v10, "*86"

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "- got vm number: \'"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v39, "\'"

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    if-nez v10, :cond_a

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_a
    const/16 v37, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsVoiceMessageCount(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "getVoiceMessageCount = "

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ge v0, v5, :cond_b

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v39, 0xff

    move/from16 v0, v39

    if-ge v5, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v39, 0x7f0d045e

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v39, 0x0

    aput-object v37, v5, v39

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    :cond_b
    invoke-static/range {v21 .. v21}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v23

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v39, 0x7f0d0461

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v39, 0x7f0d0461

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v14, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.android.phone.SetupVoicemail"

    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v14, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    move/from16 v0, p1

    invoke-virtual {v14, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->isTablet()Z

    move-result v5

    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v39, Lcom/android/phone/CallFeaturesSetting;

    move-object/from16 v0, v39

    invoke-virtual {v14, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_c
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/16 v39, 0x0

    move/from16 v0, p1

    move/from16 v1, v39

    invoke-static {v5, v0, v14, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    const/16 v28, 0x0

    const-string/jumbo v5, "button_voicemail_notification_ringtone_key"

    const/16 v39, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    move/from16 v0, v29

    if-ne v0, v5, :cond_d

    const-string/jumbo v5, "button_voicemail_notification_ringtone_key_sim2"

    const/16 v39, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    :cond_d
    const-string/jumbo v5, "pref_key_voicemail_sound"

    const/16 v39, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "updateMwi : bSound is "

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "feature_dcm"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-eqz v4, :cond_1c

    :cond_e
    if-eqz p3, :cond_f

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    :cond_f
    :goto_4
    const/4 v15, 0x1

    const-string/jumbo v5, "feature_tmo"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v15, 0x0

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide/from16 v40, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v39

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v12

    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v11, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v39

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v39, 0x7f0a0006

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v39

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-static/range {v24 .. v24}, Lcom/android/phone/CallFeaturesSetting;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z

    const/16 v36, 0x0

    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    move/from16 v0, v29

    if-ne v0, v5, :cond_1e

    const-string/jumbo v5, "button_meterial_voicemail_notification_vibrate_key_sim2"

    const/16 v39, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    :goto_5
    if-eqz v36, :cond_11

    const/4 v5, 0x2

    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_11
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v35

    const/4 v13, 0x0

    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v5

    if-ge v13, v5, :cond_20

    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v39, "no_outgoing_calls"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_1f

    :cond_12
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_13
    const v27, 0x108007e

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    move/from16 v0, v29

    if-ne v0, v5, :cond_15

    const v27, 0x7f020178

    goto/16 :goto_1

    :cond_15
    const v27, 0x7f020177

    goto/16 :goto_1

    :cond_16
    const v27, 0x108007e

    goto/16 :goto_1

    :cond_17
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v5, "- Null vm number: SIM records not loaded (yet)..."

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void

    :cond_19
    const-string/jumbo v5, "voicemail_roaming_nuber"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v39, 0x7f0d045f

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v42, v0

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v44, v0

    const-string/jumbo v45, "voicemail_settings_number_label"

    invoke-virtual/range {v43 .. v45}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x0

    aput-object v42, v39, v43

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x10200000

    invoke-virtual {v14, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v39, Lcom/android/phone/VoiceMailDialAlertDialog;

    move-object/from16 v0, v39

    invoke-virtual {v14, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/16 v39, 0x1

    move/from16 v0, v39

    if-le v5, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v18

    :goto_8
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.CALL"

    const-string/jumbo v39, "voicemail"

    const-string/jumbo v42, ""

    const/16 v43, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v14, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v5, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    move-object/from16 v0, v23

    invoke-virtual {v14, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v39, 0x7f0d045f

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x0

    aput-object v42, v39, v43

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    goto :goto_8

    :cond_1c
    sget-object v5, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v39, "set ringtoneUri to null."

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x0

    goto/16 :goto_4

    :cond_1d
    sget-object v28, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto/16 :goto_4

    :cond_1e
    const-string/jumbo v5, "button_meterial_voicemail_notification_vibrate_key"

    const/16 v39, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v20

    move/from16 v3, v16

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/phone/NotificationMgr;->sendNotificationCustomComponent(Ljava/lang/Integer;Ljava/lang/String;Landroid/app/PendingIntent;Z)Z

    move-result v5

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    const/16 v42, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v42

    move-object/from16 v2, v17

    move-object/from16 v3, v34

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_7

    :cond_20
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/phone/NotificationMgr;->sendVoiceMailInfo(ZIJLjava/lang/String;)V

    :goto_9
    return-void

    :cond_21
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v39, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v42

    move/from16 v3, v43

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/phone/NotificationMgr;->sendNotificationCustomComponent(Ljava/lang/Integer;Ljava/lang/String;Landroid/app/PendingIntent;Z)Z

    move-result v5

    if-nez v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    sget-object v42, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v43, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v43

    move-object/from16 v2, v42

    invoke-virtual {v5, v0, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/NotificationMgr;->sendClearVoicemailInfo()V

    goto :goto_9
.end method

.method updateNetworkSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(II)V

    return-void
.end method

.method updateNetworkSelection(II)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneBySubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "global_network_cdma_gsm_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "network_selection_name_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "network_selection_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v0

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "Because SIMSTATE changed later than servicestate changed, we should check simstate by using PHONE DB."

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNetworkSelection()...serviceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " networkSelection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " SimState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-ne v0, v7, :cond_5

    :cond_3
    const-string/jumbo v5, "NO SIM"

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_6

    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection(I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "network_manually_selected"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "network_manually_selected_phone_id"

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    if-eq p1, v7, :cond_7

    if-ne p1, v9, :cond_8

    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v5

    if-ne v5, v7, :cond_f

    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection(I)V

    iput-boolean v8, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify2:Z

    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection2:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "global_network_cdma_gsm_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v9, :cond_a

    return-void

    :cond_a
    const-string/jumbo v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "[CTC] not necessary"

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {p2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhoneId(I)I

    move-result v5

    if-ne v5, v7, :cond_d

    iget-boolean v5, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify2:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection2:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_c
    invoke-direct {p0, v2, p2}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;I)V

    iput-boolean v7, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify2:Z

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection2:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    iget-boolean v5, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_e
    invoke-direct {p0, v2, p2}, Lcom/android/phone/NotificationMgr;->showNetworkSelection(Ljava/lang/String;I)V

    iput-boolean v7, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    iput-object v2, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    invoke-direct {p0, p2}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection(I)V

    iput-boolean v8, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/android/phone/NotificationMgr;->preNetworkSelection:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNetworkSelection()...state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not updating network due to invalid subId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateRoamingNotification(Z)V
    .locals 14

    const v13, 0x7f020176

    const v12, 0x7f10024f

    const v11, 0x7f10024e

    const/16 v10, 0x8

    const/4 v9, 0x0

    sget-object v6, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateRoamingNotification : [roamingMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->isDataRoaming()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/phone/NotificationMgr;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "updateRoamingNotification : Not roaming area..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->hideRoamingNotification()V

    return-void

    :cond_0
    new-instance v5, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0400cf

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0400d0

    invoke-direct {v2, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v1, 0x106005a

    if-eqz p1, :cond_1

    const v6, 0x7f10024d

    invoke-virtual {v5, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f10024c

    invoke-virtual {v5, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v5, v12, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v5, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f10024d

    invoke-virtual {v2, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f10024c

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v12, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    const v7, 0x7f10024a

    invoke-virtual {v5, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    const v7, 0x7f10024a

    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/phone/PhoneGlobals;->getRoamingPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v11, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v6, 0x7f100249

    invoke-virtual {v5, v6, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v6, 0x7f100249

    invoke-virtual {v2, v6, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-direct {p0, v13, v5}, Lcom/android/phone/NotificationMgr;->applyIcon(ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v13, v2}, Lcom/android/phone/NotificationMgr;->applyIcon(ILandroid/widget/RemoteViews;)V

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0d070a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v8, 0x7f0d070c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x106005a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iput-object v2, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/app/Notification;->flags:I

    const/4 v6, 0x1

    iput v6, v3, Landroid/app/Notification;->priority:I

    const/4 v6, 0x1

    iput v6, v3, Landroid/app/Notification;->visibility:I

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106005a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, v3, Landroid/app/Notification;->color:I

    iget-object v6, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v7, 0xc

    invoke-virtual {v6, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    const v6, 0x7f10024c

    invoke-virtual {v5, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f10024d

    invoke-virtual {v5, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v5, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v5, v12, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f10024c

    invoke-virtual {v2, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v6, 0x7f10024d

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v12, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0
.end method
