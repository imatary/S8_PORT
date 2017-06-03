.class public Landroid/icu/impl/locale/KeyTypeData;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$KeyData;,
        Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$SpecialType;,
        Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$Type;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final KEYMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/KeyTypeData$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DATA:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Landroid/icu/impl/locale/KeyTypeData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/impl/locale/KeyTypeData;->-assertionsDisabled:Z

    new-array v0, v1, [[Ljava/lang/Object;

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData;->initFromResourceBundle()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initFromResourceBundle()V
    .locals 48

    const-string/jumbo v44, "android/icu/impl/data/icudt56b"

    const-string/jumbo v45, "keyTypeData"

    sget-object v46, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static/range {v44 .. v46}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v25

    const-string/jumbo v44, "keyMap"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v24

    const-string/jumbo v44, "typeMap"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v41

    const/16 v35, 0x0

    const/4 v10, 0x0

    :try_start_0
    const-string/jumbo v44, "typeAlias"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v35

    :goto_0
    :try_start_1
    const-string/jumbo v44, "bcpTypeAlias"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v10

    :goto_1
    invoke-virtual/range {v24 .. v24}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v23

    :cond_0
    :goto_2
    invoke-virtual/range {v23 .. v23}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_12

    invoke-virtual/range {v23 .. v23}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v44

    if-nez v44, :cond_1

    move-object/from16 v7, v26

    const/16 v17, 0x1

    :cond_1
    const-string/jumbo v44, "timezone"

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    const/16 v34, 0x0

    if-eqz v35, :cond_4

    const/16 v36, 0x0

    :try_start_2
    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v36

    :goto_3
    if-eqz v36, :cond_4

    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v36 .. v36}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v37

    :goto_4
    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_4

    invoke-virtual/range {v37 .. v37}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v32

    if-eqz v20, :cond_2

    const/16 v44, 0x3a

    const/16 v45, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v16

    :cond_2
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v15

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    if-eqz v10, :cond_6

    const/4 v11, 0x0

    :try_start_3
    invoke-virtual {v10, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v11

    :goto_5
    if-eqz v11, :cond_6

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v12

    :goto_6
    invoke-virtual {v12}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_6

    invoke-virtual {v12}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v32

    invoke-interface {v9, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catch_1
    move-exception v15

    goto :goto_5

    :cond_6
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    const/16 v28, 0x0

    const/16 v42, 0x0

    :try_start_4
    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v42

    :cond_7
    if-eqz v42, :cond_10

    invoke-virtual/range {v42 .. v42}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v43

    :cond_8
    invoke-virtual/range {v43 .. v43}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_10

    invoke-virtual/range {v43 .. v43}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v27

    const/16 v19, 0x0

    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v45

    const/16 v44, 0x0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v46, v0

    :goto_7
    move/from16 v0, v44

    move/from16 v1, v46

    if-ge v0, v1, :cond_a

    aget-object v30, v45, v44

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_e

    const/16 v19, 0x1

    if-nez v28, :cond_9

    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    :cond_9
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v19, :cond_8

    if-eqz v20, :cond_b

    const/16 v44, 0x3a

    const/16 v45, 0x2f

    move-object/from16 v0, v27

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v27

    :cond_b
    invoke-virtual/range {v40 .. v40}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v44

    if-nez v44, :cond_c

    move-object/from16 v14, v27

    const/16 v18, 0x1

    :cond_c
    new-instance v31, Landroid/icu/impl/locale/KeyTypeData$Type;

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v14}, Landroid/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v27 .. v27}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v39

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v18, :cond_d

    invoke-static {v14}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v39

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v34, :cond_f

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/Set;

    if-eqz v38, :cond_f

    invoke-interface/range {v38 .. v38}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v39

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catch_2
    move-exception v15

    sget-boolean v44, Landroid/icu/impl/locale/KeyTypeData;->-assertionsDisabled:Z

    if-nez v44, :cond_7

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    :cond_e
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_7

    :cond_f
    if-eqz v9, :cond_8

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    if-eqz v13, :cond_8

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v39

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_10
    const/16 v29, 0x0

    if-eqz v28, :cond_11

    invoke-static/range {v28 .. v28}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v29

    :cond_11
    new-instance v21, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v39

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    sget-object v44, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static/range {v26 .. v26}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v17, :cond_0

    sget-object v44, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v7}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_12
    return-void

    :catch_3
    move-exception v15

    goto/16 :goto_1

    :catch_4
    move-exception v15

    goto/16 :goto_0
.end method

.method private static initFromTables()V
    .locals 42

    sget-object v36, Landroid/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    const/16 v33, 0x0

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v35, v33

    :goto_0
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_12

    aget-object v18, v36, v35

    const/16 v33, 0x0

    aget-object v19, v18, v33

    check-cast v19, Ljava/lang/String;

    const/16 v33, 0x1

    aget-object v7, v18, v33

    check-cast v7, Ljava/lang/String;

    const/16 v33, 0x2

    aget-object v30, v18, v33

    check-cast v30, [[Ljava/lang/String;

    const/16 v33, 0x3

    aget-object v26, v18, v33

    check-cast v26, [[Ljava/lang/String;

    const/16 v33, 0x4

    aget-object v8, v18, v33

    check-cast v8, [[Ljava/lang/String;

    const/4 v14, 0x0

    if-nez v7, :cond_0

    move-object/from16 v7, v19

    const/4 v14, 0x1

    :cond_0
    const/16 v28, 0x0

    if-eqz v26, :cond_2

    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    const/16 v33, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v34, v0

    :goto_1
    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_2

    aget-object v27, v26, v33

    const/16 v38, 0x0

    aget-object v13, v27, v38

    const/16 v38, 0x1

    aget-object v25, v27, v38

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v33, v33, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    if-eqz v8, :cond_4

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/16 v33, 0x0

    array-length v0, v8

    move/from16 v34, v0

    :goto_2
    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    aget-object v9, v8, v33

    const/16 v38, 0x0

    aget-object v13, v9, v38

    const/16 v38, 0x1

    aget-object v25, v9, v38

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v25

    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    :cond_4
    sget-boolean v33, Landroid/icu/impl/locale/KeyTypeData;->-assertionsDisabled:Z

    if-nez v33, :cond_6

    if-eqz v30, :cond_5

    const/16 v33, 0x1

    :goto_3
    if-nez v33, :cond_6

    new-instance v33, Ljava/lang/AssertionError;

    invoke-direct/range {v33 .. v33}, Ljava/lang/AssertionError;-><init>()V

    throw v33

    :cond_5
    const/16 v33, 0x0

    goto :goto_3

    :cond_6
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    const/16 v21, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v34, v33

    :goto_4
    move/from16 v0, v34

    move/from16 v1, v38

    if-ge v0, v1, :cond_f

    aget-object v31, v30, v34

    const/16 v33, 0x0

    aget-object v20, v31, v33

    const/16 v33, 0x1

    aget-object v12, v31, v33

    const/16 v16, 0x0

    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v39

    const/16 v33, 0x0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v40, v0

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v40

    if-ge v0, v1, :cond_8

    aget-object v23, v39, v33

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_a

    const/16 v16, 0x1

    if-nez v21, :cond_7

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v16, :cond_b

    :cond_9
    add-int/lit8 v33, v34, 0x1

    move/from16 v34, v33

    goto :goto_4

    :cond_a
    add-int/lit8 v33, v33, 0x1

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    if-nez v12, :cond_c

    move-object/from16 v12, v20

    const/4 v15, 0x1

    :cond_c
    new-instance v24, Landroid/icu/impl/locale/KeyTypeData$Type;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v12}, Landroid/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v15, :cond_d

    invoke-static {v12}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Set;

    if-eqz v29, :cond_e

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    if-eqz v11, :cond_9

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_f
    const/16 v22, 0x0

    if-eqz v21, :cond_10

    invoke-static/range {v21 .. v21}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v22

    :cond_10
    new-instance v17, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    sget-object v33, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v14, :cond_11

    sget-object v33, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v7}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v33, v35, 0x1

    move/from16 v35, v33

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public static toBcpKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->bcpId:Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v2
.end method

.method public static toBcpType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_1
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_2
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/KeyTypeData$Type;

    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    return-object v4

    :cond_3
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    iget-object v4, v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p3, :cond_5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_5
    iget-object v4, v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    return-object v5
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->legacyId:Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v2
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_1
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_2
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/KeyTypeData$Type;

    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    return-object v4

    :cond_3
    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    iget-object v4, v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p3, :cond_5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_5
    iget-object v4, v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v4, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6
    return-object v5
.end method
