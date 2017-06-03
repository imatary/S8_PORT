.class public Landroid/icu/impl/ICUConfig;
.super Ljava/lang/Object;
.source "ICUConfig.java"


# static fields
.field private static final CONFIG_PROPS:Ljava/util/Properties;

.field public static final CONFIG_PROPS_FILE:Ljava/lang/String; = "/android/icu/ICUConfig.properties"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Landroid/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    :try_start_0
    const-string/jumbo v3, "/android/icu/ICUConfig.properties"

    invoke-static {v3}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v3, Landroid/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    move-object v2, p0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v4, Landroid/icu/impl/ICUConfig$1;

    invoke-direct {v4, p0}, Landroid/icu/impl/ICUConfig$1;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v3, :cond_0

    sget-object v4, Landroid/icu/impl/ICUConfig;->CONFIG_PROPS:Ljava/util/Properties;

    invoke-virtual {v4, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    return-object v3

    :cond_1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
