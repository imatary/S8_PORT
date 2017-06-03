.class public final Landroid/icu/impl/ICUData;
.super Ljava/lang/Object;
.source "ICUData.java"


# static fields
.field public static final ICU_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b"

.field public static final ICU_BRKITR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/brkitr"

.field public static final ICU_BRKITR_NAME:Ljava/lang/String; = "brkitr"

.field public static final ICU_BUNDLE:Ljava/lang/String; = "data/icudt56b"

.field public static final ICU_COLLATION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/coll"

.field public static final ICU_CURR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/curr"

.field static final ICU_DATA_PATH:Ljava/lang/String; = "android/icu/impl/"

.field public static final ICU_LANG_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/lang"

.field public static final ICU_RBNF_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/rbnf"

.field public static final ICU_REGION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/region"

.field public static final ICU_TRANSLIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/translit"

.field public static final ICU_UNIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/unit"

.field public static final ICU_ZONE_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/zone"

.field static final PACKAGE_NAME:Ljava/lang/String; = "icudt56b"

.field private static final logBinaryDataFromInputStream:Z

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/icu/impl/ICUData;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/icu/impl/ICUData$1;

    invoke-direct {v1, p0}, Landroid/icu/impl/ICUData$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const-class v1, Landroid/icu/impl/ICUData;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getRequiredStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getRequiredStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getRequiredStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-class v0, Landroid/icu/impl/ICUData;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/icu/impl/ICUData$2;

    invoke-direct {v1, p0, p1}, Landroid/icu/impl/ICUData$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "could not locate data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Landroid/icu/impl/ICUData;->checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/icu/impl/ICUData$3;

    invoke-direct {v1, p0, p1}, Landroid/icu/impl/ICUData$3;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v1, Ljava/util/MissingResourceException;

    const-string/jumbo v2, "could not locate data"

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, Landroid/icu/impl/ICUData;->checkStreamForBinaryData(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-class v0, Landroid/icu/impl/ICUData;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
