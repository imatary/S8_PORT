.class public Landroid/icu/impl/ResourceBundleWrapper;
.super Landroid/icu/util/UResourceBundle;
.source "ResourceBundleWrapper.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private baseName:Ljava/lang/String;

.field private bundle:Ljava/util/ResourceBundle;

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localeID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "resourceBundleWrapper"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/ResourceBundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    iput-object p1, p0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 6

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "_"

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    const-string/jumbo v1, "/"

    :cond_0
    new-instance v2, Ljava/util/MissingResourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not find the bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_1
    return-object v0
.end method

.method private initKeysVector()V
    .locals 4

    move-object v0, p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v3}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/ResourceBundleWrapper;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static declared-synchronized instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 26

    const-class v23, Landroid/icu/impl/ResourceBundleWrapper;

    monitor-enter v23

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_0
    move-object/from16 v6, p2

    move-object/from16 v17, p0

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_1
    move-object/from16 v0, v17

    invoke-static {v0, v8}, Landroid/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ResourceBundleWrapper;

    if-nez v3, :cond_7

    const/16 v18, 0x0

    const/16 v22, 0x5f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Landroid/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v18

    check-cast v18, Landroid/icu/impl/ResourceBundleWrapper;

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p3

    invoke-static {v0, v1, v6, v2}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v18

    check-cast v18, Landroid/icu/impl/ResourceBundleWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_0
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v22

    const-class v24, Ljava/util/ResourceBundle;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ResourceBundle;

    new-instance v4, Landroid/icu/impl/ResourceBundleWrapper;

    invoke-direct {v4, v5}, Landroid/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v18, :cond_3

    :try_start_2
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    :cond_3
    move-object/from16 v0, p0

    iput-object v0, v4, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v4, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz v15, :cond_e

    :try_start_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x2e

    const/16 v25, 0x2f

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, ".properties"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v22, Landroid/icu/impl/ResourceBundleWrapper$1;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v1}, Landroid/icu/impl/ResourceBundleWrapper$1;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/io/InputStream;

    if-eqz v20, :cond_d

    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v3, Landroid/icu/impl/ResourceBundleWrapper;

    new-instance v22, Ljava/util/PropertyResourceBundle;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v18, :cond_4

    :try_start_5
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    :cond_4
    move-object/from16 v0, p0

    iput-object v0, v3, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v3, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    move-object/from16 v20, v21

    :goto_3
    if-nez v3, :cond_5

    :try_start_7
    invoke-virtual {v8}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_5

    const/16 v22, 0x5f

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    if-gez v22, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v24, -0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v24, "_"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Landroid/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    move-object v3, v0

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v9, v6, v1}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    move-object v3, v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    if-nez v3, :cond_6

    move-object/from16 v3, v18

    :cond_6
    :goto_4
    :try_start_8
    move-object/from16 v0, v17

    invoke-static {v0, v8, v3}, Landroid/icu/impl/ResourceBundleWrapper;->addToCache(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ResourceBundleWrapper;

    :cond_7
    if-eqz v3, :cond_c

    invoke-direct {v3}, Landroid/icu/impl/ResourceBundleWrapper;->initKeysVector()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_8
    :goto_5
    monitor-exit v23

    return-object v3

    :cond_9
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/icu/impl/ResourceBundleWrapper;->loadFromCache(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v18

    check-cast v18, Landroid/icu/impl/ResourceBundleWrapper;

    if-nez v18, :cond_2

    const-string/jumbo v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p3

    invoke-static {v0, v1, v6, v2}, Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v18

    check-cast v18, Landroid/icu/impl/ResourceBundleWrapper;

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :goto_6
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    if-eqz v22, :cond_a

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v24, "failure"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    if-eqz v22, :cond_f

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v4, v3

    goto/16 :goto_1

    :catch_1
    move-exception v12

    :goto_7
    const/4 v15, 0x1

    move-object v4, v3

    goto/16 :goto_1

    :catch_2
    move-exception v10

    :goto_8
    const/4 v15, 0x1

    move-object v4, v3

    goto/16 :goto_1

    :catch_3
    move-exception v13

    goto/16 :goto_2

    :catch_4
    move-exception v13

    move-object v3, v4

    :goto_9
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    :catch_5
    move-exception v13

    goto/16 :goto_2

    :catchall_0
    move-exception v22

    move-object v3, v4

    :goto_a
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_b
    :try_start_c
    throw v22
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_6
    move-exception v11

    :goto_c
    :try_start_d
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    if-eqz v22, :cond_b

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v24, "failure"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    if-eqz v22, :cond_6

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception v22

    monitor-exit v23

    throw v22

    :catch_7
    move-exception v13

    goto :goto_b

    :cond_c
    :try_start_e
    sget-boolean v22, Landroid/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    if-eqz v22, :cond_8

    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Returning null for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_5

    :catch_8
    move-exception v11

    move-object v3, v4

    goto :goto_c

    :catchall_2
    move-exception v22

    goto :goto_a

    :catch_9
    move-exception v13

    goto :goto_9

    :catch_a
    move-exception v10

    move-object v3, v4

    goto :goto_8

    :catch_b
    move-exception v12

    move-object v3, v4

    goto/16 :goto_7

    :catch_c
    move-exception v11

    move-object v3, v4

    goto/16 :goto_6

    :cond_d
    move-object v3, v4

    goto/16 :goto_3

    :cond_e
    move-object v3, v4

    goto/16 :goto_4

    :cond_f
    move-object v4, v3

    goto/16 :goto_1
.end method


# virtual methods
.method protected getBaseName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()Ljava/util/Enumeration;
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

    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getLocaleID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Landroid/icu/util/UResourceBundle;
    .locals 1

    iget-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Landroid/icu/util/UResourceBundle;

    return-object v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 2

    new-instance v0, Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, v0, Landroid/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v3, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    new-instance v3, Ljava/util/MissingResourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find resource for bundle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/icu/impl/ResourceBundleWrapper;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ResourceBundleWrapper;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected setLoadingStatus(I)V
    .locals 0

    return-void
.end method
