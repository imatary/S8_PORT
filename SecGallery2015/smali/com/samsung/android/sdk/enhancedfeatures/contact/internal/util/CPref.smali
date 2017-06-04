.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;
.super Ljava/lang/Object;
.source "CPref.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sContactPackageName:Ljava/lang/String;

.field static sCtx:Landroid/content/Context;

.field private static sSentPushTimeStamp:J

.field private static sTimeStamp:J

.field private static shareWith:Landroid/net/Uri;

.field private static sharedItem:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, -0x1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    sput-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J

    sput-wide v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sSentPushTimeStamp:J

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->getContactPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sContactPackageName:Ljava/lang/String;

    const-string/jumbo v0, "content://com.samsung.contacts.detail.profilesharing/ShareWith"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->shareWith:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.contacts.detail.profilesharing/SharedInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sharedItem:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearAllPreference()V
    .locals 6

    const-class v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v4, "contact_pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getPrivacy()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;
    .locals 5

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v3, "contact_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "privacy_value"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    :goto_0
    return-object v2

    :pswitch_0
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PRIVATE:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_2
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_4
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getPrivacySettings()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSupportedSamsungDevice()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-gt v4, v5, :cond_1

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sContactPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "SharedItem"

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "showMyProfile_index"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPrivacySettings() privacyValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    :goto_1
    return-object v4

    :cond_1
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->shareWith:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v5, "contact_pref"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "showMyProfile_index"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    :pswitch_1
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_PRIVATE:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    :pswitch_3
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    :pswitch_4
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getStatusMessage()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v2, "contact_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "status_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    return-void
.end method

.method public static isFirstUpload()Z
    .locals 4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v2, "contact_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "is_first_upload"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isIndividualItemsEnabled(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v8, 0x31

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSupportedSamsungDevice()Z

    move-result v6

    if-eqz v6, :cond_9

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-gt v6, v7, :cond_0

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sContactPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v6, "SharedItem"

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const/4 v7, 0x5

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-ne v0, v4, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isIndividualItemsEnabled() key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " on"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v4

    :cond_0
    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sharedItem:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string/jumbo v6, "email_checking"

    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-char v6, v2, v5

    if-ne v6, v8, :cond_1

    move v0, v4

    :goto_2
    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_2

    :cond_2
    const-string/jumbo v6, "organisation_checking"

    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-char v6, v2, v4

    if-ne v6, v8, :cond_3

    move v0, v4

    :goto_3
    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    const-string/jumbo v6, "address_checking"

    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x2

    aget-char v6, v2, v6

    if-ne v6, v8, :cond_5

    move v0, v4

    :goto_4
    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_4

    :cond_6
    const-string/jumbo v6, "date_checking"

    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x3

    aget-char v6, v2, v6

    if-ne v6, v8, :cond_7

    move v0, v4

    :goto_5
    goto :goto_0

    :cond_7
    move v0, v5

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v7, "contact_pref"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isIndividualItemsEnabled() key is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " off"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_1
.end method

.method public static setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSupportedSamsungDevice()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v3, "contact_pref"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContactAgentIndividualItemsEnabled key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "This device is supported coreapps"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setFirstUpload(Z)V
    .locals 5

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v3, "contact_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "is_first_upload"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setPrivacy(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;)V
    .locals 5

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v3, "contact_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "privacy_value"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStackedPush(Z)V
    .locals 5

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v3, "contact_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "is_stacked_push"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStatusMessage(Ljava/lang/String;)V
    .locals 5

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v3, "contact_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "status_message"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized setTimeStamp(J)V
    .locals 6

    const-class v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;

    monitor-enter v3

    :try_start_0
    sput-wide p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sTimeStamp:J

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->sCtx:Landroid/content/Context;

    const-string/jumbo v4, "contact_pref"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "timestamp"

    invoke-interface {v0, v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
