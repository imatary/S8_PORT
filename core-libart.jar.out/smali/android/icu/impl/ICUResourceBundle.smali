.class public Landroid/icu/impl/ICUResourceBundle;
.super Landroid/icu/util/UResourceBundle;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundle$1;,
        Landroid/icu/impl/ICUResourceBundle$AvailEntry;,
        Landroid/icu/impl/ICUResourceBundle$OpenType;,
        Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ALIAS:I = 0x3

.field public static final ARRAY16:I = 0x9

.field private static final DEBUG:Z

.field private static final DEFAULT_TAG:Ljava/lang/String; = "default"

.field public static final FROM_DEFAULT:I = 0x3

.field public static final FROM_FALLBACK:I = 0x1

.field public static final FROM_LOCALE:I = 0x4

.field public static final FROM_ROOT:I = 0x2

.field private static final FULL_LOCALE_NAMES_LIST:Ljava/lang/String; = "fullLocaleNames.lst"

.field private static GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUResourceBundle$AvailEntry;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final HYPHEN:C = '-'

.field private static final ICUDATA:Ljava/lang/String; = "ICUDATA"

.field public static final ICU_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_BRKITR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/brkitr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_BUNDLE:Ljava/lang/String; = "data/icudt56b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_COLLATION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/coll"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_CURR_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/curr"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

.field protected static final ICU_DATA_PATH:Ljava/lang/String; = "android/icu/impl/"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_LANG_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_RBNF_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/rbnf"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_REGION_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/region"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ICU_RESOURCE_INDEX:Ljava/lang/String; = "res_index"

.field public static final ICU_TRANSLIT_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/translit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ICU_ZONE_BASE_NAME:Ljava/lang/String; = "android/icu/impl/data/icudt56b/zone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final INSTALLED_LOCALES:Ljava/lang/String; = "InstalledLocales"

.field private static final LOCALE:Ljava/lang/String; = "LOCALE"

.field private static final NO_INHERITANCE_MARKER:Ljava/lang/String; = "\u2205\u2205\u2205"

.field public static final RES_BOGUS:I = -0x1

.field private static final RES_PATH_SEP_CHAR:C = '/'

.field private static final RES_PATH_SEP_STR:Ljava/lang/String; = "/"

.field public static final STRING_V2:I = 0x6

.field public static final TABLE16:I = 0x5

.field public static final TABLE32:I = 0x4


# instance fields
.field private container:Landroid/icu/impl/ICUResourceBundle;

.field protected key:Ljava/lang/String;

.field private loadingStatus:I

.field wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    const-class v0, Landroid/icu/impl/ICUData;

    invoke-static {v0}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string/jumbo v0, "localedata"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    new-instance v0, Landroid/icu/impl/ICUResourceBundle$1;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle$1;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    return-void
.end method

.method private static final addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/ICUResourceBundle$2;

    invoke-direct {v0, p1, p0, p2}, Landroid/icu/impl/ICUResourceBundle$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static final addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v4, "res_index"

    const/4 v5, 0x1

    invoke-static {p0, v4, p1, v5}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v4, "InstalledLocales"

    invoke-virtual {v0, v4}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->reset()V

    :goto_0
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v4, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "couldn\'t find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "res_index"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".res"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method private static addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "fullLocaleNames.lst"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "ASCII"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static countPathKeys(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;->getBundle(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method private static createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v0, p0

    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v6, "android.icu.impl.ICUResourceBundle.skipRuntimeLocaleResourceScan"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v0, p1, v4}, Landroid/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const-string/jumbo v7, "android/icu/impl/data/icudt56b"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_4

    const-string/jumbo v1, ""

    :goto_1
    if-eqz v1, :cond_0

    const-string/jumbo v6, ".res"

    invoke-static {v1, v6, v4}, Landroid/icu/impl/ICUBinary;->addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    const-string/jumbo v6, "res_index"

    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_1

    :cond_2
    const/16 v6, 0x5f

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_5

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-boolean v6, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v6, :cond_7

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to enumerate data files in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    invoke-static {v0, p1, v4}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {p0, p1, v4}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    :cond_9
    const-string/jumbo v6, "root"

    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v6, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-virtual {v6}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    return-object v6
.end method

.method private static createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static final createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .locals 9

    const-string/jumbo v7, "res_index"

    const/4 v8, 0x1

    invoke-static {p0, v7, p1, v8}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v7, "InstalledLocales"

    invoke-virtual {v0, v7}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v4

    const/4 v1, 0x0

    new-array v5, v4, [Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->reset()V

    :goto_0
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "root"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v2, v1, 0x1

    sget-object v7, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    aput-object v7, v5, v1

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    new-instance v7, Landroid/icu/util/ULocale;

    invoke-direct {v7, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v5
.end method

.method private static final findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v1

    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v3

    sget-boolean v5, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    if-nez v5, :cond_2

    if-lez v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_2
    add-int v4, v1, v3

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p0, v3, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    invoke-static {v2, v1, v0, p2}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    return-object v4
.end method

.method private static final findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 8

    const/4 v7, 0x0

    if-nez p3, :cond_0

    move-object p3, p2

    :cond_0
    :goto_0
    add-int/lit8 v1, p1, 0x1

    aget-object v5, p0, p1

    invoke-virtual {p2, v5, v7, p3}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    if-nez v4, :cond_1

    add-int/lit8 p1, v1, -0x1

    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    if-nez v3, :cond_3

    return-object v7

    :cond_1
    array-length v6, p0

    if-ne v1, v6, :cond_2

    check-cast p3, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p3}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    return-object v4

    :cond_2
    move-object p2, v4

    move p1, v1

    goto :goto_0

    :cond_3
    invoke-direct {p2}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    if-eq p1, v0, :cond_4

    array-length v6, p0

    sub-int/2addr v6, p1

    add-int/2addr v6, v0

    new-array v2, v6, [Ljava/lang/String;

    array-length v6, p0

    sub-int/2addr v6, p1

    invoke-static {p0, p1, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    :cond_4
    invoke-direct {p2, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    move-object p2, v3

    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static final findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    return-object v6

    :cond_0
    move-object/from16 v0, p1

    instance-of v6, v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    if-nez v6, :cond_1

    const/4 v6, 0x0

    return-object v6

    :cond_1
    if-nez p2, :cond_2

    move-object/from16 p2, p1

    :cond_2
    move-object/from16 v1, p1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    iget-object v6, v1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v13, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    const/4 v5, -0x1

    invoke-direct {v1}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v8

    move v3, v8

    invoke-static/range {p0 .. p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v12

    sget-boolean v6, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    if-nez v6, :cond_4

    if-lez v12, :cond_3

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    add-int v6, v8, v12

    new-array v2, v6, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v12, v2, v8}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    move v9, v3

    :goto_1
    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v17

    const/4 v6, 0x2

    move/from16 v0, v17

    if-eq v0, v6, :cond_5

    const/16 v6, 0x8

    move/from16 v0, v17

    if-ne v0, v6, :cond_6

    :cond_5
    move-object v6, v1

    check-cast v6, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    iget-object v14, v6, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    :goto_2
    add-int/lit8 v3, v9, 0x1

    aget-object v4, v2, v9

    invoke-virtual {v14, v13, v4}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    add-int/lit8 v3, v3, -0x1

    :goto_3
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    if-nez v11, :cond_10

    const/4 v6, 0x0

    return-object v6

    :cond_6
    move v3, v9

    goto :goto_3

    :cond_7
    invoke-static {v5}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v13, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v14

    goto :goto_2

    :cond_8
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v13, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v14

    goto :goto_2

    :cond_9
    const/4 v5, -0x1

    move v3, v9

    goto :goto_3

    :cond_a
    invoke-static {v5}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    invoke-direct {v1, v2, v8}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    const/4 v6, 0x0

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Landroid/icu/impl/ICUResourceBundle;->getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v16

    :goto_4
    array-length v6, v2

    if-ne v3, v6, :cond_e

    if-eqz v16, :cond_c

    invoke-virtual/range {v16 .. v16}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_b
    const/16 v16, 0x0

    goto :goto_4

    :cond_c
    invoke-virtual {v13, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_d

    new-instance v6, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v7, ""

    invoke-direct {v6, v7}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    return-object v15

    :cond_e
    if-eqz v16, :cond_f

    move-object/from16 v1, v16

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v13, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    const/4 v5, -0x1

    invoke-direct {v1}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v8

    if-eq v3, v8, :cond_f

    array-length v6, v2

    sub-int/2addr v6, v3

    add-int/2addr v6, v8

    new-array v10, v6, [Ljava/lang/String;

    array-length v6, v2

    sub-int/2addr v6, v3

    invoke-static {v2, v3, v10, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v10

    move v3, v8

    :cond_f
    :goto_5
    move v9, v3

    goto/16 :goto_1

    :cond_10
    invoke-direct {v1, v2, v8}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    move-object v1, v11

    iget-object v6, v11, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v13, v6, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    const/4 v8, 0x0

    const/4 v3, 0x0

    goto :goto_5
.end method

.method protected static getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v8, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    const/4 v9, 0x0

    const/4 v7, 0x0

    iget-object v14, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Landroid/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object v11

    if-nez p5, :cond_0

    new-instance p5, Ljava/util/HashMap;

    invoke-direct/range {p5 .. p5}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Circular references in the resource bundles"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    const-string/jumbo v14, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x2f

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-nez v14, :cond_5

    const/16 v14, 0x2f

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/16 v14, 0x2f

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v14, 0x1

    invoke-virtual {v11, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-gez v6, :cond_3

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :goto_0
    const-string/jumbo v14, "ICUDATA"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v3, "android/icu/impl/data/icudt56b"

    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    :cond_2
    :goto_1
    const/4 v2, 0x0

    const/4 v12, 0x0

    const-string/jumbo v14, "LOCALE"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v3, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    const-string/jumbo v14, "LOCALE"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p6

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    :goto_2
    iget-object v14, v2, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v14, :cond_7

    iget-object v2, v2, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    goto :goto_2

    :cond_3
    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v11, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_4
    const-string/jumbo v14, "ICUDATA"

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-le v14, v15, :cond_2

    const/16 v14, 0x2d

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v14, -0x1

    if-le v5, v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "android/icu/impl/data/icudt56b/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_5
    const/16 v14, 0x2f

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v14, -0x1

    if-eq v4, v14, :cond_6

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    iget-object v3, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    move-object v9, v11

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    invoke-static {v7, v2, v14}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v12

    :cond_8
    if-nez v12, :cond_e

    new-instance v14, Ljava/util/MissingResourceException;

    iget-object v15, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    iget-object v0, v13, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v14, v15, v0, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v14

    :cond_9
    if-nez v9, :cond_b

    const-string/jumbo v14, ""

    const/4 v15, 0x0

    invoke-static {v3, v14, v8, v15}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    :goto_4
    if-eqz v7, :cond_c

    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_a

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 p1, v0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v7, v10, v0, v14}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    :cond_a
    :goto_5
    if-lez v10, :cond_8

    move-object v12, v2

    const/4 v4, 0x0

    :goto_6
    if-eqz v12, :cond_8

    if-ge v4, v10, :cond_8

    aget-object v14, p1, v4

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v12, v14, v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v12

    check-cast v12, Landroid/icu/impl/ICUResourceBundle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    invoke-static {v3, v9, v8, v14}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    goto :goto_4

    :cond_c
    if-eqz p1, :cond_d

    move/from16 v10, p2

    goto :goto_5

    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result p2

    add-int/lit8 v10, p2, 0x1

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 p1, v0

    invoke-direct/range {p0 .. p2}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    aput-object p3, p1, p2

    goto :goto_5

    :cond_e
    return-object v12
.end method

.method private getAllContainerItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v5

    if-ne v5, v1, :cond_0

    if-eqz p3, :cond_3

    move-object v5, p0

    check-cast v5, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;

    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->getAllItems(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V

    :cond_0
    :goto_1
    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v5, :cond_1

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    if-nez v0, :cond_4

    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v5

    if-ne v5, v1, :cond_1

    invoke-direct {v4, p1, p2, p3, p4}, Landroid/icu/impl/ICUResourceBundle;->getAllContainerItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    move-object v5, p0

    check-cast v5, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-virtual {v5, p1, p2, p4}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getAllItems(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V

    goto :goto_1

    :cond_4
    new-array v3, v0, [Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    invoke-static {v3, v7, v2, v6}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    goto :goto_2
.end method

.method private getAllContainerItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    move-object v5, p0

    :cond_0
    if-eqz p2, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v7

    if-eq v7, v1, :cond_3

    new-instance v7, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v8, ""

    invoke-direct {v7, v8}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    add-int v7, v0, v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, v3, v4, v0}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    invoke-static {v4, v0, p0, v8}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v7, Ljava/util/MissingResourceException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t find resource for bundle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, p1, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/icu/impl/UResource$Key;

    invoke-direct {v2}, Landroid/icu/impl/UResource$Key;-><init>()V

    new-instance v6, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    invoke-direct {v6}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    invoke-direct {v5, v2, v6, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getAllContainerItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V

    return-void
.end method

.method private static getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;
    .locals 1

    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    return-object v0
.end method

.method public static getAvailableLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleNameSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 2

    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static getBundle(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;
    .locals 6

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleReader;->getRootResource()I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    invoke-direct {v3, p1, p2, p3, p0}, Landroid/icu/impl/ICUResourceBundle$WholeBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V

    new-instance v2, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-direct {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;I)V

    const-string/jumbo v4, "%%ALIAS"

    invoke-virtual {v2, v4}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    return-object v4

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Invalid format error"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    return-object v2
.end method

.method public static getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p0, v0, v1, p2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo p0, "android/icu/impl/data/icudt56b"

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not find the bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 5

    if-eqz p3, :cond_0

    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    :goto_0
    invoke-static {p0, p1, p2, v1}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not find the bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getFullLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "android/icu/impl/data/icudt56b"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getFullLocaleNameSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;[ZZ)Landroid/icu/util/ULocale;
    .locals 23

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-instance v14, Landroid/icu/util/ULocale;

    invoke-direct {v14, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_b

    :cond_0
    :goto_0
    const-string/jumbo v12, ""

    const/4 v13, 0x1

    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v15

    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    if-eqz p5, :cond_2

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-boolean v19, p5, v20

    invoke-static/range {p0 .. p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    move-result-object v4

    const/4 v10, 0x0

    :goto_1
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    aget-object v19, v4, v10

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-boolean v19, p5, v20

    :cond_2
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v19, "default"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v13, :cond_3

    move-object v12, v8

    const/4 v13, 0x0

    :cond_3
    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    :goto_2
    if-nez v7, :cond_4

    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v15

    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    add-int/lit8 v6, v6, 0x1

    :cond_4
    if-eqz v15, :cond_5

    if-eqz v7, :cond_2

    :cond_5
    new-instance v14, Landroid/icu/util/ULocale;

    invoke-direct {v14, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v15

    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    :cond_6
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v11, v12}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    invoke-virtual {v11}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v9

    if-eqz v9, :cond_7

    move/from16 v0, v16

    if-le v0, v6, :cond_7

    const-string/jumbo v19, "default"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    move/from16 v6, v16

    :cond_7
    :goto_3
    if-nez v9, :cond_8

    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v15

    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    add-int/lit8 v16, v16, 0x1

    :cond_8
    if-eqz v15, :cond_9

    if-eqz v9, :cond_6

    :cond_9
    if-nez v9, :cond_a

    if-eqz v8, :cond_a

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_a
    if-nez v9, :cond_11

    new-instance v19, Ljava/util/MissingResourceException;

    const-string/jumbo v20, "Could not find locale containing requested or default keyword."

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v19

    :cond_b
    const-string/jumbo v19, "default"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_d
    move-object v12, v8

    new-instance v14, Landroid/icu/util/ULocale;

    invoke-direct {v14, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v15

    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    const/16 v16, 0x0

    :goto_4
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v11

    check-cast v11, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v11, v12}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v18

    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/UResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_e

    const/4 v9, 0x0

    :cond_e
    if-eqz v9, :cond_f

    move/from16 v0, v16

    if-le v0, v6, :cond_f

    const-string/jumbo v19, "default"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    move/from16 v6, v16

    :cond_f
    :goto_5
    if-nez v9, :cond_10

    invoke-virtual {v15}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v15

    check-cast v15, Landroid/icu/impl/ICUResourceBundle;

    add-int/lit8 v16, v16, 0x1

    :cond_10
    if-eqz v15, :cond_a

    if-nez v9, :cond_a

    goto :goto_4

    :cond_11
    if-eqz p6, :cond_12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    move/from16 v0, v16

    if-gt v0, v6, :cond_12

    return-object v9

    :cond_12
    new-instance v19, Landroid/icu/util/ULocale;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "@"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v19

    :catch_0
    move-exception v17

    goto :goto_5

    :catch_1
    move-exception v17

    goto/16 :goto_3

    :catch_2
    move-exception v17

    goto/16 :goto_2
.end method

.method public static final getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p0, v8}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    move-result-object v5

    const/4 v2, 0x0

    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_2

    :try_start_0
    aget-object v8, v5, v2

    invoke-static {p0, v8}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v8, "default"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "private-"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8
.end method

.method public static final getLocaleList([Landroid/icu/util/ULocale;)[Ljava/util/Locale;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    aget-object v4, p0, v0

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Locale;

    return-object v4
.end method

.method private getNoFallback()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader;->getNoFallback()Z

    move-result v0

    return v0
.end method

.method private getResDepth()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 7

    const/16 v6, 0x2f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ne p1, v3, :cond_1

    aput-object p0, p2, p3

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    sget-boolean v5, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    if-lt v1, v0, :cond_2

    move v5, v3

    :goto_1
    if-nez v5, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, p3

    const/4 v5, 0x2

    if-ne p1, v5, :cond_6

    sget-boolean v5, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    if-nez v5, :cond_5

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_4

    :goto_2
    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    return-void

    :cond_6
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 p1, p1, -0x1

    move p3, v2

    goto :goto_0
.end method

.method private getResPathKeys([Ljava/lang/String;I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    :cond_0
    if-lez p2, :cond_4

    add-int/lit8 p2, p2, -0x1

    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    aput-object v1, p1, p2

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    sget-boolean v1, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, v0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-nez v4, :cond_2

    move v4, v2

    :goto_1
    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_2
    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static declared-synchronized instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;
    .locals 17

    const-class v14, Landroid/icu/impl/ICUResourceBundle;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v5

    move-object/from16 v8, p1

    const/16 v13, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/icu/impl/ICUResourceBundle;->loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    const/16 v13, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_5

    const-string/jumbo v11, "root"

    :goto_0
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v8, v11

    :cond_1
    sget-boolean v13, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v13, :cond_2

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Creating "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " currently b is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    if-nez v3, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v8, v1}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    sget-boolean v13, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v13, :cond_3

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The bundle created is: "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, " and openType="

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, " and bundle.getNoFallback="

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz v3, :cond_6

    invoke-direct {v3}, Landroid/icu/impl/ICUResourceBundle;->getNoFallback()Z

    move-result v13

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    sget-object v13, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    move-object/from16 v0, p3

    if-eq v0, v13, :cond_4

    if-eqz v3, :cond_7

    invoke-direct {v3}, Landroid/icu/impl/ICUResourceBundle;->getNoFallback()Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_4
    invoke-static {v6, v5, v3}, Landroid/icu/impl/ICUResourceBundle;->addToCache(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    monitor-exit v14

    return-object v13

    :cond_5
    :try_start_1
    const-string/jumbo v11, ""

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x0

    goto :goto_1

    :cond_7
    if-nez v3, :cond_c

    const/16 v13, 0x5f

    invoke-virtual {v8, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_9

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v12, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_2
    monitor-exit v14

    return-object v3

    :cond_9
    :try_start_2
    sget-object v13, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    move-object/from16 v0, p3

    if-ne v0, v13, :cond_a

    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v3, :cond_8

    const/4 v13, 0x3

    invoke-virtual {v3, v13}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    goto :goto_2

    :cond_c
    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v8

    const/16 v13, 0x5f

    invoke-virtual {v8, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-static {v6, v5, v3}, Landroid/icu/impl/ICUResourceBundle;->addToCache(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    move-object v0, v3

    check-cast v0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    move-object v13, v0

    const-string/jumbo v15, "%%Parent"

    invoke-virtual {v13, v15}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v10, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    :cond_d
    :goto_3
    invoke-virtual {v3, v9}, Landroid/icu/impl/ICUResourceBundle;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v3, v9}, Landroid/icu/impl/ICUResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    goto :goto_2

    :cond_e
    const/4 v13, -0x1

    if-eq v7, v13, :cond_f

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v13, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    goto :goto_3

    :cond_f
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v11, v1, v13}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    goto :goto_3
.end method

.method protected static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 1

    if-eqz p3, :cond_0

    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    goto :goto_0
.end method


# virtual methods
.method public at(I)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p0}, Landroid/icu/impl/ICUResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    return v3

    :cond_0
    instance-of v1, p1, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findTopLevel(I)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(I)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    invoke-super {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public bridge synthetic findTopLevel(I)Landroid/icu/util/UResourceBundle;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(I)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1
    check-cast p3, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p3}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(Ljava/lang/String;)V

    return-object v1
.end method

.method public getAllArrayItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$ArraySink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllContainerItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V

    return-void
.end method

.method public getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/ICUResourceBundle;->getAllContainerItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$ArraySink;Landroid/icu/impl/UResource$TableSink;)V

    return-void
.end method

.method protected getBaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingStatus()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected getLocaleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Landroid/icu/util/UResourceBundle;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Landroid/icu/util/UResourceBundle;

    return-object v0
.end method

.method public getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static {p1, p0, v2}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "\u2205\u2205\u2205"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/MissingResourceException;

    const-string/jumbo v3, "Encountered NO_INHERITANCE_MARKER"

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1
    return-object v1
.end method

.method public final getTopLevelKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static {p1, p0, v2}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find resource for bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u2205\u2205\u2205"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/MissingResourceException;

    const-string/jumbo v3, "Encountered NO_INHERITANCE_MARKER"

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1
    return-object v1
.end method

.method protected handleGetKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    sget-boolean v0, Landroid/icu/impl/ICUResourceBundle;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method protected isTopLevelResource()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoadingStatus(I)V
    .locals 0

    iput p1, p0, Landroid/icu/impl/ICUResourceBundle;->loadingStatus:I

    return-void
.end method

.method public setLoadingStatus(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->setLoadingStatus(I)V

    goto :goto_0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    return-void
.end method

.method public final setTopLevelKeySet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object p1, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    return-void
.end method
