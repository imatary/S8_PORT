.class public Lcom/android/phone/SubscriptionInfoHelper;
.super Ljava/lang/Object;
.source "SubscriptionInfoHelper.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mSubId:I

.field private static mSubLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/phone/SubscriptionInfoHelper;->mSubId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/phone/SubscriptionInfoHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/SubscriptionInfoHelper;->mSubId:I

    const-string/jumbo v0, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionLabel"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SubscriptionInfoHelper;->mSubLabel:Ljava/lang/String;

    return-void
.end method

.method public static addExtrasToIntent(Landroid/content/Intent;Landroid/telephony/SubscriptionInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionId"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "com.android.phone.settings.SubscriptionInfoHelper.SubscriptionLabel"

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/SubscriptionInfoHelper;->hasSubId()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/SubscriptionInfoHelper;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubId()I
    .locals 1

    sget v0, Lcom/android/phone/SubscriptionInfoHelper;->mSubId:I

    return v0
.end method

.method public hasSubId()Z
    .locals 2

    sget v0, Lcom/android/phone/SubscriptionInfoHelper;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionBarTitle(Landroid/app/ActionBar;Landroid/content/res/Resources;I)V
    .locals 5

    if-eqz p1, :cond_0

    sget-object v1, Lcom/android/phone/SubscriptionInfoHelper;->mSubLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/phone/SubscriptionInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/android/phone/SubscriptionInfoHelper;->mSubLabel:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
