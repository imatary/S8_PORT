.class public Landroid/icu/impl/locale/LocaleExtensions;
.super Ljava/lang/Object;
.source "LocaleExtensions.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

.field public static final EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

.field private static final EMPTY_MAP:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;


# instance fields
.field private _id:Ljava/lang/String;

.field private _map:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x75

    const-class v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/locale/LocaleExtensions;->-assertionsDisabled:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    const-string/jumbo v1, ""

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    sget-object v1, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    const-string/jumbo v1, "u-ca-japanese"

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    const-string/jumbo v1, "u-nu-thai"

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v20

    if-lez v20, :cond_3

    const/4 v8, 0x1

    :goto_0
    if-eqz p2, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v20

    if-lez v20, :cond_4

    const/4 v9, 0x1

    :goto_1
    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v20

    if-lez v20, :cond_5

    const/4 v10, 0x1

    :goto_2
    if-nez v8, :cond_0

    if-eqz v9, :cond_6

    :cond_0
    new-instance v20, Ljava/util/TreeMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    if-eqz v8, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v11

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static {v11}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-static/range {v19 .. v19}, Landroid/icu/impl/locale/InternalLocaleBuilder;->removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    :cond_2
    new-instance v5, Landroid/icu/impl/locale/Extension;

    invoke-static/range {v19 .. v19}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v11, v0}, Landroid/icu/impl/locale/Extension;-><init>(CLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    move-object/from16 v20, v0

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    if-nez v10, :cond_0

    sget-object v20, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    return-void

    :cond_7
    if-nez v9, :cond_8

    if-eqz v10, :cond_b

    :cond_8
    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz v9, :cond_9

    new-instance v16, Ljava/util/TreeSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/TreeSet;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v3}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-eqz v10, :cond_a

    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    new-instance v18, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    move-object/from16 v20, v0

    const/16 v21, 0x75

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/SortedMap;->size()I

    move-result v20

    if-nez v20, :cond_c

    sget-object v20, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    :goto_6
    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/icu/impl/locale/LocaleExtensions;->toID(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    goto :goto_6
.end method

.method public static isValidKey(C)Z
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidUnicodeLocaleKey(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static toID(Ljava/util/SortedMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/Extension;

    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Landroid/icu/impl/locale/LocaleExtensions;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    nop

    nop

    iget-object v1, p1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    sget-boolean v1, Landroid/icu/impl/locale/LocaleExtensions;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    check-cast v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-virtual {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    sget-boolean v1, Landroid/icu/impl/locale/LocaleExtensions;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    check-cast v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-virtual {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    sget-boolean v1, Landroid/icu/impl/locale/LocaleExtensions;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    check-cast v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    return-object v0
.end method
