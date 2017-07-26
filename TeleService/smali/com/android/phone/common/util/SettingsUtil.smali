.class public Lcom/android/phone/common/util/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field private static final DEFAULT_NOTIFICATION_URI_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/util/SettingsUtil;->DEFAULT_NOTIFICATION_URI_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v0, 0x0

    if-ne p2, v9, :cond_2

    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    const v8, 0x7f0d0244

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_5

    const v8, 0x7f0d0243

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const v9, 0x7f0d022a

    invoke-virtual {p0, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {p1, p4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v8, Lcom/android/phone/common/util/SettingsUtil;->DEFAULT_NOTIFICATION_URI_STRING:Ljava/lang/String;

    invoke-interface {v1, p3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sget-object v8, Lcom/android/phone/common/util/SettingsUtil;->DEFAULT_NOTIFICATION_URI_STRING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v0, 0x1

    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    move-object v5, v6

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method
