.class public Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;
.super Lcom/samsung/android/common/util/Preference;
.source "NoncePref.java"


# static fields
.field public static final HEADER_SETTING:Ljava/lang/String; = "SEC_HEADER_SETTING"

.field static final KEY_DEVICE_NONCE:Ljava/lang/String; = "Device.Nonce"

.field public static instance:Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;->instance:Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/util/Preference;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceNonce(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v2, "SEC_HEADER_SETTING"

    const-string v3, "Device.Nonce"

    const-string v4, ""

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get nonce: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    return-object v1
.end method

.method public setDeviceNonce(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save nonce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v0, "SEC_HEADER_SETTING"

    const-string v1, "Device.Nonce"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/network/auth/sec/NoncePref;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
