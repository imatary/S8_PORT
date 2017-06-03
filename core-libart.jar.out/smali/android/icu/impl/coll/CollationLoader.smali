.class public final Landroid/icu/impl/coll/CollationLoader;
.super Ljava/lang/Object;
.source "CollationLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationLoader$ASCII;
    }
.end annotation


# static fields
.field private static volatile rootRules:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 1

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getRootRules()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/icu/impl/coll/CollationLoader;->loadRootRules()V

    sget-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    return-object v0
.end method

.method private static loadRootRules()V
    .locals 4

    sget-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-class v2, Landroid/icu/impl/coll/CollationLoader;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "android/icu/impl/data/icudt56b/coll"

    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-static {v1, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "UCARules"

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static loadRules(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v3, "android/icu/impl/data/icudt56b/coll"

    invoke-static {v3, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "collations/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    const-string/jumbo v3, "Sequence"

    invoke-virtual {v1, v3}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static loadTailoring(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/impl/coll/CollationTailoring;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/Output",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/impl/coll/CollationTailoring;"
        }
    .end annotation

    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_0

    const-string/jumbo v22, "root"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    sget-object v22, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    return-object v17

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v22, "android/icu/impl/data/icudt56b/coll"

    sget-object v23, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_2

    const-string/jumbo v22, "root"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    :cond_2
    sget-object v20, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :try_start_1
    const-string/jumbo v22, "collations"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    if-nez v8, :cond_4

    return-object v17

    :catch_0
    move-exception v13

    sget-object v22, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    return-object v17

    :catch_1
    move-exception v14

    return-object v17

    :cond_4
    const-string/jumbo v22, "collation"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v11, "standard"

    move-object/from16 v22, v8

    check-cast v22, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v23, "default"

    invoke-virtual/range {v22 .. v23}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    move-object v11, v10

    :cond_5
    if-eqz v19, :cond_6

    const-string/jumbo v22, "default"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    :cond_6
    move-object/from16 v19, v11

    :goto_0
    move-object/from16 v0, v19

    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    if-nez v9, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    const-string/jumbo v22, "search"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    const-string/jumbo v19, "search"

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    :cond_7
    if-nez v9, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_8
    :goto_1
    if-nez v9, :cond_9

    const-string/jumbo v22, "standard"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    :cond_9
    :goto_2
    if-nez v9, :cond_d

    return-object v17

    :cond_a
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    :cond_b
    move-object/from16 v19, v11

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    goto :goto_1

    :cond_c
    const-string/jumbo v19, "standard"

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    goto :goto_2

    :cond_d
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_e

    const-string/jumbo v22, "root"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    :cond_e
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    const-string/jumbo v22, "standard"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    return-object v17

    :cond_f
    new-instance v18, Landroid/icu/impl/coll/CollationTailoring;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    const-string/jumbo v22, "%%CollationBin"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v15

    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1}, Landroid/icu/impl/coll/CollationDataReader;->read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string/jumbo v22, "Sequence"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationTailoring;->setRulesResource(Landroid/icu/util/UResourceBundle;)V
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    const-string/jumbo v22, "collation"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_10
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    const-string/jumbo v22, "android/icu/impl/data/icudt56b/coll"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v22, "collations/default"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    move-object v11, v10

    :cond_11
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    move-object/from16 v22, v0

    const-string/jumbo v23, "collation"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    :cond_12
    return-object v18

    :catch_2
    move-exception v12

    new-instance v22, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Failed to load collation tailoring data for locale:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " type:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v12}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    :catch_3
    move-exception v14

    goto/16 :goto_3
.end method
