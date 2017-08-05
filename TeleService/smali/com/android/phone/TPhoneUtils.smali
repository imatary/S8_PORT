.class public Lcom/android/phone/TPhoneUtils;
.super Ljava/lang/Object;
.source "TPhoneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisconnectCause(I)Ljava/lang/String;
    .locals 6

    const v3, 0x7f0d04c7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v1

    :sswitch_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "callFailed_cb_enabled"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d023d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d023e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "callFailed_dsac_restricted_normal"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_6
        0x12 -> :sswitch_8
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x25 -> :sswitch_7
        0x26 -> :sswitch_9
        0x28 -> :sswitch_a
        0x2b -> :sswitch_5
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "[tphone] TPhoneUtils"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setDefaultCaller(I)V
    .locals 8

    const/4 v7, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultCaller : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne p0, v7, :cond_1

    const-string/jumbo v4, "Carrier Phone"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/TPhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.CALL"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v4, "tel"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v0, v4, [Landroid/content/ComponentName;

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.android.server.telecom"

    const-string/jumbo v6, "com.android.server.telecom.components.UserCallActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v0, v5

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.skt.prod.phone"

    const-string/jumbo v6, "com.skt.prod.phone.activities.phone.OutgoingCallBroadcaster"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v7

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.server.telecom"

    const-string/jumbo v5, "com.android.server.telecom.components.UserCallActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p0, v7, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.skt.prod.phone"

    const-string/jumbo v5, "com.skt.prod.phone.activities.phone.OutgoingCallBroadcaster"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 v4, 0x200000

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void

    :cond_1
    const-string/jumbo v4, "Samsung Phone"

    goto :goto_0
.end method

.method public static setDefaultDialer(I)V
    .locals 12

    const/high16 v11, 0x200000

    const/4 v10, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDefaultDialer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne p0, v10, :cond_1

    const-string/jumbo v7, "Carrier Phone"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/TPhoneUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.DIAL"

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.DIAL"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v7, "tel"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v7, "tel"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v7, "tel"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v7, 0x2

    new-array v4, v7, [Landroid/content/ComponentName;

    new-instance v7, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.android.dialer.DialtactsActivity"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v7, v4, v8

    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.skt.prod.dialer"

    const-string/jumbo v9, "com.skt.prod.dialer.activities.main.DialIntroActivity"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v4, v10

    new-instance v5, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.android.dialer.DialtactsActivity"

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p0, v10, :cond_0

    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.skt.prod.dialer"

    const-string/jumbo v8, "com.skt.prod.dialer.activities.main.DialIntroActivity"

    invoke-direct {v5, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 v7, 0x100000

    invoke-virtual {v6, v0, v7, v4, v5}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {v6, v1, v11, v4, v5}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {v6, v3, v11, v4, v5}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-virtual {v6, v2, v11, v4, v5}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void

    :cond_1
    const-string/jumbo v7, "Samsung Phone"

    goto/16 :goto_0
.end method
