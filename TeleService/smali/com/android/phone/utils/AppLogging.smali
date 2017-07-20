.class public Lcom/android/phone/utils/AppLogging;
.super Ljava/lang/Object;
.source "AppLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/utils/AppLogging$AppLoggingAction;,
        Lcom/android/phone/utils/AppLogging$MultipleEntry;
    }
.end annotation


# static fields
.field private static mCSEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/utils/AppLogging$MultipleEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mExtra:Ljava/lang/String;

.field private static mFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

.field private static mSupportAppLogging:Z

.field private static mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/utils/AppLogging;->mFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/utils/AppLogging;->mSupportAppLogging:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAction(Lcom/android/phone/utils/AppLogging$AppLoggingAction;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->GENERAL_MULTI:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_MULTI:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    return-object v0

    :cond_2
    const-string/jumbo v0, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    return-object v0
.end method

.method public static insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-object p0, Lcom/android/phone/utils/AppLogging;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/phone/utils/AppLogging;->mExtra:Ljava/lang/String;

    sput-object v0, Lcom/android/phone/utils/AppLogging;->mValue:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/phone/utils/AppLogging;->insertLog(Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/android/phone/utils/AppLogging;->mContext:Landroid/content/Context;

    sput-object p3, Lcom/android/phone/utils/AppLogging;->mExtra:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/utils/AppLogging;->mValue:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/phone/utils/AppLogging;->insertLog(Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/phone/utils/AppLogging;->mContext:Landroid/content/Context;

    sput-object p3, Lcom/android/phone/utils/AppLogging;->mExtra:Ljava/lang/String;

    sput-object p4, Lcom/android/phone/utils/AppLogging;->mValue:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/phone/utils/AppLogging;->insertLog(Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    return-void
.end method

.method static insertLog(Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/phone/utils/AppLogging;->isSupportAppLogging()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/utils/AppLogging;->mExtra:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "extra"

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mExtra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/android/phone/utils/AppLogging;->mValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "value"

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0}, Lcom/android/phone/utils/AppLogging;->getAction(Lcom/android/phone/utils/AppLogging$AppLoggingAction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/phone/utils/AppLogging;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "AppLogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "app_id = com.android.phone, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/android/phone/utils/AppLogging;->getAction(Lcom/android/phone/utils/AppLogging$AppLoggingAction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", feature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/utils/AppLogging;->mExtra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/utils/AppLogging;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static insertMultipleLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;)V
    .locals 3

    invoke-static {}, Lcom/android/phone/utils/AppLogging;->isSupportAppLogging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/phone/utils/AppLogging;->getAction(Lcom/android/phone/utils/AppLogging$AppLoggingAction;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "AppLogging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertMultipleLog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    :cond_2
    invoke-static {p0}, Lcom/android/phone/utils/AppLogging;->setCallSettingStatusEntry(Landroid/content/Context;)V

    sget-object v0, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    invoke-static {p0, p1, v0}, Lcom/android/phone/utils/AppLogging;->insertMultipleLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/util/ArrayList;)V

    return-void
.end method

.method static insertMultipleLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/phone/utils/AppLogging$AppLoggingAction;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/utils/AppLogging$MultipleEntry;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/phone/utils/AppLogging;->isSupportAppLogging()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    sput-object p0, Lcom/android/phone/utils/AppLogging;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const/16 v5, 0x1e

    if-ne v4, v5, :cond_3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Lcom/android/phone/utils/AppLogging;->getAction(Lcom/android/phone/utils/AppLogging$AppLoggingAction;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "data"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.providers.context"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/android/phone/utils/AppLogging;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v5, "AppLogging"

    const-string/jumbo v6, "insertMultipleLog"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v1, v4

    aget-object v5, v1, v4

    const-string/jumbo v6, "app_id"

    const-string/jumbo v7, "com.android.phone"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v1, v4

    const-string/jumbo v6, "feature"

    invoke-static {v2}, Lcom/android/phone/utils/AppLogging$MultipleEntry;->-get1(Lcom/android/phone/utils/AppLogging$MultipleEntry;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/phone/utils/AppLogging$MultipleEntry;->-get0(Lcom/android/phone/utils/AppLogging$MultipleEntry;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    aget-object v5, v1, v4

    const-string/jumbo v6, "extra"

    invoke-static {v2}, Lcom/android/phone/utils/AppLogging$MultipleEntry;->-get0(Lcom/android/phone/utils/AppLogging$MultipleEntry;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Lcom/android/phone/utils/AppLogging$MultipleEntry;->-get2(Lcom/android/phone/utils/AppLogging$MultipleEntry;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_5

    aget-object v5, v1, v4

    const-string/jumbo v6, "value"

    invoke-static {v2}, Lcom/android/phone/utils/AppLogging$MultipleEntry;->-get2(Lcom/android/phone/utils/AppLogging$MultipleEntry;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private static isSupportAppLogging()Z
    .locals 3

    sget-object v0, Lcom/android/phone/utils/AppLogging;->mFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/android/phone/utils/AppLogging;->mFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    sget-object v0, Lcom/android/phone/utils/AppLogging;->mFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/utils/AppLogging;->mSupportAppLogging:Z

    :cond_0
    const-string/jumbo v0, "AppLogging"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupportAppLogging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/utils/AppLogging;->mSupportAppLogging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/phone/utils/AppLogging;->mSupportAppLogging:Z

    return v0
.end method

.method private static setCallSettingStatusEntry(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "SWIP"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "swipe_to_call_message"

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_0
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "OCPN"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "only_contact_with_phone"

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_c

    move v0, v1

    :goto_1
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "support_tphone"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "TPMO"

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "SKT T phone"

    :goto_2
    const-wide/16 v6, -0x1

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "block_data_during_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "VOPR"

    const-string/jumbo v0, "enable_call_protect_when_calling"

    invoke-static {v0, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_3
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v0, "support_spam_call_mutefirstring"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "IUCM"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "spam_call_mute_first_ring"

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_f

    move v0, v1

    :goto_4
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "CTRL"

    const-string/jumbo v0, "voice_input_control_incomming_calls"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_10

    move v0, v1

    :goto_5
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "AUAN"

    const-string/jumbo v0, "automatic_answering_enable_sharedpref"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    :goto_6
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "hw_home_key"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "HOME"

    const-string/jumbo v0, "anykey_mode"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_12

    move v0, v1

    :goto_7
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string/jumbo v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "ANOP"

    const-string/jumbo v0, "answeringmode_folder_open"

    invoke-static {v0, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_13

    move v0, v1

    :goto_8
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "POWR"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "incall_power_button_behavior"

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_14

    move v0, v1

    :goto_9
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "VIAN"

    const-string/jumbo v0, "call_answer_vib"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_15

    move v0, v1

    :goto_a
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "VIEN"

    const-string/jumbo v0, "call_end_vib"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_16

    move v0, v1

    :goto_b
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "CONT"

    const-string/jumbo v0, "call_conn_tone"

    invoke-static {v0, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_17

    move v0, v1

    :goto_c
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "ENDT"

    const-string/jumbo v0, "call_end_tone"

    invoke-static {v0, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_18

    move v0, v1

    :goto_d
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "NODC"

    const-string/jumbo v0, "alertoncall_mode"

    invoke-static {v0, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_19

    move v0, v1

    :goto_e
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "extended_restrict_international_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "OICL"

    const-string/jumbo v0, "outging_intcall_lock"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1a

    move v0, v1

    :goto_f
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "IICL"

    const-string/jumbo v0, "incoming_intcall_lock"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1b

    move v0, v1

    :goto_10
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "ICNO"

    const-string/jumbo v0, "intcall_voice_noti"

    invoke-static {v0, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1c

    move v0, v1

    :goto_11
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo v0, "dcm_auto_reject_conditions"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "BLUN"

    const-string/jumbo v0, "unknown_mode"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1d

    move v0, v1

    :goto_12
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string/jumbo v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "IUNX"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "spam_call_enable"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1e

    move v0, v1

    :goto_13
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo v0, "concept_kor_common"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "VIQT"

    const-string/jumbo v0, "videocallmessage_settings"

    invoke-static {v0, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1f

    move v0, v2

    :goto_14
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "VISK"

    const-string/jumbo v0, "videocall_speaker"

    invoke-static {v0, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_20

    move v0, v2

    :goto_15
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string/jumbo v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v3, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v5, "VISK"

    const-string/jumbo v0, "videocall_speaker"

    invoke-static {v0, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    :goto_16
    int-to-long v6, v0

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string/jumbo v0, "visual_call_center_callerid_info"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/phone/utils/AppLogging;->mCSEntries:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/phone/utils/AppLogging$MultipleEntry;

    const-string/jumbo v4, "VCCO"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "visual_call_status"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_22

    :goto_17
    int-to-long v6, v1

    invoke-direct {v3, v4, v8, v6, v7}, Lcom/android/phone/utils/AppLogging$MultipleEntry;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    return-void

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v0, "Samsung phone"

    goto/16 :goto_2

    :cond_e
    move v0, v2

    goto/16 :goto_3

    :cond_f
    move v0, v2

    goto/16 :goto_4

    :cond_10
    move v0, v2

    goto/16 :goto_5

    :cond_11
    move v0, v1

    goto/16 :goto_6

    :cond_12
    move v0, v2

    goto/16 :goto_7

    :cond_13
    move v0, v2

    goto/16 :goto_8

    :cond_14
    move v0, v2

    goto/16 :goto_9

    :cond_15
    move v0, v2

    goto/16 :goto_a

    :cond_16
    move v0, v2

    goto/16 :goto_b

    :cond_17
    move v0, v2

    goto/16 :goto_c

    :cond_18
    move v0, v2

    goto/16 :goto_d

    :cond_19
    move v0, v2

    goto/16 :goto_e

    :cond_1a
    move v0, v2

    goto/16 :goto_f

    :cond_1b
    move v0, v2

    goto/16 :goto_10

    :cond_1c
    move v0, v2

    goto/16 :goto_11

    :cond_1d
    move v0, v2

    goto/16 :goto_12

    :cond_1e
    move v0, v2

    goto/16 :goto_13

    :cond_1f
    move v0, v1

    goto/16 :goto_14

    :cond_20
    move v0, v1

    goto/16 :goto_15

    :cond_21
    move v0, v1

    goto :goto_16

    :cond_22
    move v1, v2

    goto :goto_17
.end method
