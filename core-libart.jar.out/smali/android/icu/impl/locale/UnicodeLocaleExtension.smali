.class public Landroid/icu/impl/locale/UnicodeLocaleExtension;
.super Landroid/icu/impl/locale/Extension;
.source "UnicodeLocaleExtension.java"


# static fields
.field public static final CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

.field private static final EMPTY_SORTED_MAP:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_SORTED_SET:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

.field public static final SINGLETON:C = 'u'


# instance fields
.field private _attributes:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _keywords:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    new-instance v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-direct {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    iget-object v0, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    const-string/jumbo v1, "ca"

    const-string/jumbo v2, "japanese"

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    const-string/jumbo v1, "ca-japanese"

    iput-object v1, v0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    new-instance v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-direct {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    iget-object v0, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    const-string/jumbo v1, "nu"

    const-string/jumbo v2, "thai"

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    const-string/jumbo v1, "nu-thai"

    iput-object v1, v0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x75

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/Extension;-><init>(C)V

    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    iput-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    iput-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    return-void
.end method

.method constructor <init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v7

    if-lez v7, :cond_0

    iput-object p1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/SortedMap;->size()I

    move-result v7

    if-lez v7, :cond_1

    iput-object p2, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    :cond_1
    iget-object v7, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    move-result v7

    if-gtz v7, :cond_2

    iget-object v7, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {v7}, Ljava/util/SortedMap;->size()I

    move-result v7

    if-lez v7, :cond_6

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v7, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {v7}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public static isAttribute(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKey(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingletonChar(C)Z
    .locals 2

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v0

    const/16 v1, 0x75

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isType(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    const-string/jumbo v5, "-"

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    return v4

    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-gez v0, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    :cond_3
    add-int/lit8 v2, v0, 0x1

    goto :goto_0
.end method

.method public static isTypeSubtag(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUnicodeLocaleAttributes()Ljava/util/Set;
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

    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
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

    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
