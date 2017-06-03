.class public Landroid/icu/text/UnicodeSet;
.super Landroid/icu/text/UnicodeFilter;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/UnicodeSet$ComparisonStyle;,
        Landroid/icu/text/UnicodeSet$EntryRange;,
        Landroid/icu/text/UnicodeSet$EntryRangeIterable;,
        Landroid/icu/text/UnicodeSet$EntryRangeIterator;,
        Landroid/icu/text/UnicodeSet$Filter;,
        Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;,
        Landroid/icu/text/UnicodeSet$IntPropertyFilter;,
        Landroid/icu/text/UnicodeSet$NumericValueFilter;,
        Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;,
        Landroid/icu/text/UnicodeSet$SpanCondition;,
        Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;,
        Landroid/icu/text/UnicodeSet$VersionFilter;,
        Landroid/icu/text/UnicodeSet$XSymbolTable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/text/UnicodeFilter;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/UnicodeSet;",
        ">;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/UnicodeSet;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ADD_CASE_MAPPINGS:I = 0x4

.field public static final ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

.field private static final ANY_ID:Ljava/lang/String; = "ANY"

.field private static final ASCII_ID:Ljava/lang/String; = "ASCII"

.field private static final ASSIGNED:Ljava/lang/String; = "Assigned"

.field public static final CASE:I = 0x2

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final EMPTY:Landroid/icu/text/UnicodeSet;

.field private static final GROW_EXTRA:I = 0x10

.field private static final HIGH:I = 0x110000

.field public static final IGNORE_SPACE:I = 0x1

.field private static INCLUSIONS:[Landroid/icu/text/UnicodeSet; = null

.field private static final LAST0_START:I = 0x0

.field private static final LAST1_RANGE:I = 0x1

.field private static final LAST2_SET:I = 0x2

.field private static final LOW:I = 0x0

.field public static final MAX_VALUE:I = 0x10ffff

.field public static final MIN_VALUE:I = 0x0

.field private static final MODE0_NONE:I = 0x0

.field private static final MODE1_INBRACKET:I = 0x1

.field private static final MODE2_OUTBRACKET:I = 0x2

.field private static final NO_VERSION:Landroid/icu/util/VersionInfo;

.field private static final SETMODE0_NONE:I = 0x0

.field private static final SETMODE1_UNICODESET:I = 0x1

.field private static final SETMODE2_PROPERTYPAT:I = 0x2

.field private static final SETMODE3_PREPARSED:I = 0x3

.field private static final START_EXTRA:I = 0x10

.field private static XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;


# instance fields
.field private volatile bmpSet:Landroid/icu/impl/BMPSet;

.field private buffer:[I

.field private len:I

.field private list:[I

.field private pat:Ljava/lang/String;

.field private rangeList:[I

.field private volatile stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

.field strings:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/icu/util/VersionInfo;
    .locals 1

    sget-object v0, Landroid/icu/text/UnicodeSet;->NO_VERSION:Landroid/icu/util/VersionInfo;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/UnicodeSet;)I
    .locals 1

    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/UnicodeSet;)[I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-class v0, Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/text/UnicodeSet;->-assertionsDisabled:Z

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    sput-object v3, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    sput-object v3, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    invoke-static {v1, v1, v1, v1}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Landroid/icu/text/UnicodeSet;->NO_VERSION:Landroid/icu/util/VersionInfo;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/high16 v2, 0x110000

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>([I)V
    .locals 7

    invoke-direct {p0}, Landroid/icu/text/UnicodeFilter;-><init>()V

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    array-length v5, p1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Must have even number of integers"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    array-length v5, p1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v5, v5

    iput v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v3, -0x1

    const/4 v1, 0x0

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_3

    aget v4, p1, v1

    if-lt v3, v4, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Must be monotonically increasing."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v1, 0x1

    move v3, v4

    aput v4, v5, v1

    aget v5, p1, v2

    add-int/lit8 v0, v5, 0x1

    if-lt v4, v0, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Must be monotonically increasing."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v2, 0x1

    move v3, v0

    aput v0, v5, v2

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/high16 v6, 0x110000

    aput v6, v5, v1

    return-void
.end method

.method private static _appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;IZ)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x5c

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    return-object p0

    :sswitch_0
    const/16 v1, 0x5c

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2d -> :sswitch_0
        0x3a -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static _appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {p0, v0, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private _toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;Z)TT;"
        }
    .end annotation

    const/16 v5, 0x5c

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v4}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    move-result-object v4

    return-object v4

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-object p1

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v0}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1, v0}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    if-ne v0, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    const/16 v4, 0x5c

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    invoke-static {p1, v0}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    const/16 v4, 0x5c

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object p1

    :catch_0
    move-exception v1

    new-instance v4, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v4, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private add([III)Landroid/icu/text/UnicodeSet;
    .locals 12

    const/4 v10, 0x0

    const/high16 v11, 0x110000

    iget v9, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v9, p2

    invoke-direct {p0, v9}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    const/4 v6, 0x0

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v2, 0x1

    aget v0, v9, v10

    const/4 v4, 0x1

    aget v1, p1, v10

    move v7, v6

    move v5, v4

    move v3, v2

    :goto_0
    packed-switch p3, :pswitch_data_0

    move v6, v7

    move v4, v5

    move v2, v3

    :goto_1
    move v7, v6

    move v5, v4

    move v3, v2

    goto :goto_0

    :pswitch_0
    if-ge v0, v1, :cond_1

    if-lez v7, :cond_0

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v10, v7, -0x1

    aget v9, v9, v10

    if-gt v0, v9, :cond_0

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v9, v9, v3

    iget-object v10, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, -0x1

    aget v10, v10, v6

    invoke-static {v9, v10}, Landroid/icu/text/UnicodeSet;->max(II)I

    move-result v0

    :goto_2
    add-int/lit8 v2, v3, 0x1

    xor-int/lit8 p3, p3, 0x1

    move v4, v5

    goto :goto_1

    :cond_0
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v0, v9, v7

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v0, v9, v3

    goto :goto_2

    :cond_1
    if-ge v1, v0, :cond_3

    if-lez v7, :cond_2

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v10, v7, -0x1

    aget v9, v9, v10

    if-gt v1, v9, :cond_2

    aget v9, p1, v5

    iget-object v10, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, -0x1

    aget v10, v10, v6

    invoke-static {v9, v10}, Landroid/icu/text/UnicodeSet;->max(II)I

    move-result v1

    :goto_3
    add-int/lit8 v4, v5, 0x1

    xor-int/lit8 p3, p3, 0x2

    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v1, v9, v7

    aget v1, p1, v5

    goto :goto_3

    :cond_3
    if-ne v0, v11, :cond_5

    :cond_4
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v11, v9, v7

    iput v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iput-object v8, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    :cond_5
    if-lez v7, :cond_6

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v10, v7, -0x1

    aget v9, v9, v10

    if-gt v0, v9, :cond_6

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v9, v9, v3

    iget-object v10, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, -0x1

    aget v10, v10, v6

    invoke-static {v9, v10}, Landroid/icu/text/UnicodeSet;->max(II)I

    move-result v0

    :goto_4
    add-int/lit8 v2, v3, 0x1

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    goto/16 :goto_1

    :cond_6
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v0, v9, v7

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v0, v9, v3

    goto :goto_4

    :pswitch_1
    if-gt v1, v0, :cond_7

    if-eq v0, v11, :cond_4

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v0, v9, v7

    :goto_5
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    goto/16 :goto_1

    :cond_7
    if-eq v1, v11, :cond_4

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v1, v9, v7

    goto :goto_5

    :pswitch_2
    if-ge v0, v1, :cond_8

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v0, v9, v7

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    move v4, v5

    goto/16 :goto_1

    :cond_8
    if-ge v1, v0, :cond_9

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v6, v7

    move v2, v3

    goto/16 :goto_1

    :cond_9
    if-eq v0, v11, :cond_4

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v6, v7

    goto/16 :goto_1

    :pswitch_3
    if-ge v1, v0, :cond_a

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v1, v9, v7

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v2, v3

    goto/16 :goto_1

    :cond_a
    if-ge v0, v1, :cond_b

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    move v6, v7

    move v4, v5

    goto/16 :goto_1

    :cond_b
    if-eq v0, v11, :cond_4

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v6, v7

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection",
            "<TT;>;>(",
            "Ljava/lang/Iterable",
            "<TT;>;TU;)TU;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;[TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    aput-object v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static final addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/16 v0, 0x1f

    if-le p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method private final add_unchecked(I)Landroid/icu/text/UnicodeSet;
    .locals 7

    const v3, 0x10ffff

    const/4 v4, 0x0

    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid code point U+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-long v4, p1

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    return-object p0

    :cond_2
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aput p1, v2, v0

    if-ne p1, v3, :cond_3

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/high16 v4, 0x110000

    aput v4, v2, v3

    :cond_3
    if-lez v0, :cond_4

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([II[III)V

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    :cond_4
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    :cond_5
    if-lez v0, :cond_6

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_0

    :cond_6
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v3, v3

    if-le v2, v3, :cond_8

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x10

    new-array v1, v2, [I

    if-eqz v0, :cond_7

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_7
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    :goto_1
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aput p1, v2, v0

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, p1, 0x1

    aput v4, v2, v3

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    goto :goto_0

    :cond_8
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v4, v0, 0x2

    iget v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    sub-int/2addr v5, v0

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_1
.end method

.method private add_unchecked(II)Landroid/icu/text/UnicodeSet;
    .locals 5

    const v0, 0x10ffff

    const/4 v4, 0x6

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ge p1, p2, :cond_5

    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add([III)Landroid/icu/text/UnicodeSet;

    :cond_4
    :goto_0
    return-object p0

    :cond_5
    if-ne p1, p2, :cond_4

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method private static append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static appendCodePoint(Ljava/lang/Appendable;I)V
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/text/UnicodeSet;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz p1, :cond_0

    const v2, 0x10ffff

    if-gt p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    const v1, 0xffff

    if-gt p1, v1, :cond_2

    int-to-char v1, p1

    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;ZZ)TT;"
        }
    .end annotation

    const/16 v7, 0x5b

    :try_start_0
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/4 v7, 0x1

    if-le v0, v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v7

    const v8, 0x10ffff

    if-ne v7, v8, :cond_2

    const/16 v7, 0x5e

    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_5

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v7

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    invoke-static {p1, v6, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    if-eq v6, v2, :cond_1

    add-int/lit8 v7, v6, 0x1

    if-eq v7, v2, :cond_0

    const/16 v7, 0x2d

    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    invoke-static {p1, v2, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v6

    invoke-virtual {p0, v3}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v2

    invoke-static {p1, v6, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    if-eq v6, v2, :cond_4

    add-int/lit8 v7, v6, 0x1

    if-eq v7, v2, :cond_3

    const/16 v7, 0x2d

    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3
    invoke-static {p1, v2, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    iget-object v7, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x7b

    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    invoke-static {p1, v4, p2}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    const/16 v7, 0x7d

    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v7, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v7, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_6
    const/16 v7, 0x5d

    :try_start_1
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1
.end method

.method private applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;
    .locals 8

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    const/4 v6, -0x1

    invoke-static {p2}, Landroid/icu/text/UnicodeSet;->getInclusions(I)Landroid/icu/text/UnicodeSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v5

    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v1

    move v0, v5

    :goto_1
    if-gt v0, v1, :cond_2

    invoke-interface {p1, v0}, Landroid/icu/text/UnicodeSet$Filter;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-gez v6, :cond_0

    move v6, v0

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-ltz v6, :cond_0

    add-int/lit8 v7, v0, -0x1

    invoke-direct {p0, v6, v7}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/4 v6, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ltz v6, :cond_4

    const v7, 0x10ffff

    invoke-direct {p0, v6, v7}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    :cond_4
    return-object p0
.end method

.method private applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;I)V
    .locals 31

    const/16 v24, 0x3

    and-int/lit8 v29, p4, 0x1

    if-eqz v29, :cond_0

    const/16 v24, 0x7

    :cond_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const/16 v28, 0x0

    const/16 v26, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    const/16 v17, 0x0

    :goto_0
    const/16 v29, 0x2

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v29

    if-eqz v29, :cond_5

    :cond_1
    :goto_1
    const/16 v29, 0x2

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    const-string/jumbo v29, "Missing \']\'"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    and-int/lit8 v29, p4, 0x2

    if-eqz v29, :cond_3

    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->closeOver(I)Landroid/icu/text/UnicodeSet;

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    :cond_4
    if-eqz v28, :cond_35

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_5
    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->resemblesPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;I)Z

    move-result v29

    if-eqz v29, :cond_d

    const/16 v27, 0x2

    :cond_6
    :goto_3
    if-eqz v27, :cond_15

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_8

    if-eqz v23, :cond_7

    const-string/jumbo v29, "Char expected after operator"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v14}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v14, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    const/4 v15, 0x0

    const/16 v23, 0x0

    :cond_8
    const/16 v29, 0x2d

    move/from16 v0, v23

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    const/16 v29, 0x26

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    :cond_9
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    if-nez v21, :cond_c

    if-nez v26, :cond_b

    new-instance v26, Landroid/icu/text/UnicodeSet;

    invoke-direct/range {v26 .. v26}, Landroid/icu/text/UnicodeSet;-><init>()V

    :cond_b
    move-object/from16 v21, v26

    :cond_c
    packed-switch v27, :pswitch_data_0

    :goto_4
    const/16 v28, 0x1

    if-nez v20, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/16 v20, 0x2

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v18

    const/16 v29, 0x5b

    move/from16 v0, v29

    if-ne v8, v0, :cond_e

    if-eqz v18, :cond_f

    :cond_e
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/icu/text/SymbolTable;->lookupMatcher(I)Landroid/icu/text/UnicodeMatcher;

    move-result-object v19

    if-eqz v19, :cond_6

    :try_start_0
    move-object/from16 v0, v19

    check-cast v0, Landroid/icu/text/UnicodeSet;

    move-object/from16 v21, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v27, 0x3

    goto/16 :goto_3

    :cond_f
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    const/16 v27, 0x1

    goto/16 :goto_3

    :cond_10
    const/16 v20, 0x1

    const/16 v29, 0x5b

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v18

    const/16 v29, 0x5e

    move/from16 v0, v29

    if-ne v8, v0, :cond_11

    if-eqz v18, :cond_12

    :cond_11
    :goto_5
    const/16 v29, 0x2d

    move/from16 v0, v29

    if-ne v8, v0, :cond_13

    const/16 v18, 0x1

    goto/16 :goto_3

    :cond_12
    const/4 v13, 0x1

    const/16 v29, 0x5e

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v18

    goto :goto_5

    :cond_13
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v11

    const-string/jumbo v29, "Syntax error"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_0
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/UnicodeSet;->applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;I)V

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->skipIgnored(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet;->applyPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Landroid/icu/text/SymbolTable;)V

    goto/16 :goto_4

    :pswitch_2
    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    goto/16 :goto_4

    :cond_14
    sparse-switch v23, :sswitch_data_0

    :goto_6
    const/16 v23, 0x0

    const/4 v15, 0x2

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    goto :goto_6

    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    goto :goto_6

    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    goto :goto_6

    :cond_15
    if-nez v20, :cond_16

    const-string/jumbo v29, "Missing \'[\'"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_16
    if-nez v18, :cond_17

    sparse-switch v8, :sswitch_data_1

    :cond_17
    :goto_7
    packed-switch v15, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    const/16 v29, 0x2d

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    if-eqz v17, :cond_18

    const-string/jumbo v29, "Invalid range"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_18
    const/4 v15, 0x1

    move v14, v8

    const/16 v17, 0x0

    goto/16 :goto_0

    :sswitch_3
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v14}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v14, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_19
    const/16 v29, 0x2d

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    :goto_8
    const/16 v29, 0x5d

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v20, 0x2

    goto/16 :goto_0

    :cond_1b
    const/16 v29, 0x26

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    const-string/jumbo v29, "Trailing \'&\'"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_4
    if-nez v23, :cond_1e

    if-eqz v15, :cond_1c

    int-to-char v0, v8

    move/from16 v23, v0

    goto/16 :goto_0

    :cond_1c
    if-eqz v17, :cond_1d

    int-to-char v0, v8

    move/from16 v23, v0

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v8}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v18

    const/16 v29, 0x5d

    move/from16 v0, v29

    if-ne v8, v0, :cond_1e

    if-eqz v18, :cond_1f

    :cond_1e
    const-string/jumbo v29, "\'-\' not after char, string, or set"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1f
    const-string/jumbo v29, "-]"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0x2

    goto/16 :goto_0

    :sswitch_5
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v15, v0, :cond_20

    if-nez v23, :cond_20

    int-to-char v0, v8

    move/from16 v23, v0

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v29, "\'&\' not after set"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_6
    const-string/jumbo v29, "\'^\' not after \'[\'"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_7

    :sswitch_7
    if-eqz v23, :cond_21

    const/16 v29, 0x2d

    move/from16 v0, v23

    move/from16 v1, v29

    if-eq v0, v1, :cond_21

    const-string/jumbo v29, "Missing operand after operator"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_21
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_22

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v14}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v14, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_22
    const/4 v15, 0x0

    if-nez v7, :cond_24

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    const/16 v22, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->atEnd()Z

    move-result v29

    if-nez v29, :cond_26

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v18

    const/16 v29, 0x7d

    move/from16 v0, v29

    if-ne v8, v0, :cond_23

    if-eqz v18, :cond_25

    :cond_23
    invoke-static {v7, v8}, Landroid/icu/text/UnicodeSet;->appendCodePoint(Ljava/lang/Appendable;I)V

    goto :goto_a

    :cond_24
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_9

    :cond_25
    const/16 v22, 0x1

    :cond_26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_27

    if-eqz v22, :cond_27

    :goto_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v29, 0x2d

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_2a

    if-nez v17, :cond_28

    const-string/jumbo v29, ""

    :goto_c
    invoke-static/range {v29 .. v29}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v16

    invoke-static {v10}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v9

    const v29, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v29

    if-eq v0, v1, :cond_29

    const v29, 0x7fffffff

    move/from16 v0, v29

    if-eq v9, v0, :cond_29

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    :goto_d
    const/16 v17, 0x0

    const/16 v23, 0x0

    :goto_e
    const/16 v29, 0x7b

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v10, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    const/16 v29, 0x7d

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_27
    const-string/jumbo v29, "Invalid multicharacter string"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto :goto_b

    :cond_28
    move-object/from16 v29, v17

    goto :goto_c

    :cond_29
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-static {v0, v10, v1, v2}, Landroid/icu/impl/StringRange;->expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto :goto_d

    :cond_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-object/from16 v17, v10

    goto :goto_e

    :sswitch_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/RuleCharacterIterator;->isEscaped()Z

    move-result v18

    const/16 v29, 0x5d

    move/from16 v0, v29

    if-ne v8, v0, :cond_2b

    if-eqz v18, :cond_2e

    :cond_2b
    const/4 v5, 0x0

    :goto_f
    if-nez p2, :cond_2c

    if-eqz v5, :cond_2f

    :cond_2c
    if-eqz v5, :cond_30

    if-nez v23, :cond_30

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v15, v0, :cond_2d

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v14}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v14, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    :cond_2d
    const v29, 0xffff

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    const/16 v28, 0x1

    const/16 v29, 0x24

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x5d

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v20, 0x2

    goto/16 :goto_0

    :cond_2e
    const/4 v5, 0x1

    goto :goto_f

    :cond_2f
    const/16 v8, 0x24

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_30
    const-string/jumbo v29, "Unquoted \'$\'"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_4
    const/16 v29, 0x2d

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_33

    if-eqz v17, :cond_31

    const-string/jumbo v29, "Invalid range"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_31
    if-lt v14, v8, :cond_32

    const-string/jumbo v29, "Invalid range"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_32
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v14, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v8, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    const/4 v15, 0x0

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v14}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v14, v1}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;IZ)Ljava/lang/Appendable;

    move v14, v8

    goto/16 :goto_0

    :pswitch_5
    if-eqz v23, :cond_34

    const-string/jumbo v29, "Set expected after operator"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_34
    move v14, v8

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_35
    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x26 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x24 -> :sswitch_8
        0x26 -> :sswitch_5
        0x2d -> :sswitch_4
        0x5d -> :sswitch_3
        0x5e -> :sswitch_6
        0x7b -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;
    .locals 19

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    add-int/lit8 v4, v6, 0x5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const-string/jumbo v4, "[:"

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v5, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v16, 0x1

    add-int/lit8 v4, v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5e

    if-ne v4, v5, :cond_1

    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x1

    :cond_1
    :goto_0
    if-eqz v16, :cond_9

    const-string/jumbo v4, ":]"

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    if-gez v11, :cond_a

    const/4 v4, 0x0

    return-object v4

    :cond_2
    const-string/jumbo v7, "\\p"

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "\\N"

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4, v5, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_3
    add-int/lit8 v4, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v4, 0x50

    if-ne v10, v4, :cond_5

    const/4 v13, 0x1

    :goto_2
    const/16 v4, 0x4e

    if-ne v10, v4, :cond_6

    const/4 v14, 0x1

    :goto_3
    add-int/lit8 v4, v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v6, v4, :cond_4

    add-int/lit8 v15, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_7

    move v6, v15

    :cond_4
    const/4 v4, 0x0

    return-object v4

    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    :cond_7
    move v6, v15

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    return-object v4

    :cond_9
    const-string/jumbo v4, "}"

    goto :goto_1

    :cond_a
    const/16 v4, 0x3d

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-ltz v12, :cond_b

    if-ge v12, v11, :cond_b

    if-eqz v14, :cond_e

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, ""

    if-eqz v14, :cond_c

    move-object/from16 v18, v17

    const-string/jumbo v17, "na"

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    if-eqz v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    :cond_d
    if-eqz v16, :cond_f

    const/4 v4, 0x2

    :goto_5
    add-int/2addr v4, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object p0

    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v4, v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    :cond_f
    const/4 v4, 0x1

    goto :goto_5
.end method

.method private applyPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/Appendable;Landroid/icu/text/SymbolTable;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-direct {p0, v0, v1, p3}, Landroid/icu/text/UnicodeSet;->applyPropertyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Invalid property pattern"

    invoke-static {p1, v2}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/icu/text/UnicodeSet;->append(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private checkFrozen()V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen object"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static compare(ILjava/lang/CharSequence;)I
    .locals 1

    invoke-static {p1, p0}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public static compare(Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/lang/CharSequences;->compare(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/util/Iterator;Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/util/Collection;Ljava/util/Collection;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Landroid/icu/text/UnicodeSet$ComparisonStyle;",
            ")I"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v1, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-eq p2, v1, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    sub-int v0, v1, v4

    if-eqz v0, :cond_3

    if-gez v0, :cond_2

    move v1, v2

    :goto_0
    sget-object v4, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-ne p2, v4, :cond_0

    move v3, v2

    :cond_0
    if-ne v1, v3, :cond_1

    const/4 v2, -0x1

    :cond_1
    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v1

    return v1
.end method

.method public static compare(Ljava/util/Iterator;Ljava/util/Iterator;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<TT;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, -0x1

    :cond_1
    return v3

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    return v3

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2
.end method

.method private containsAll(Ljava/lang/String;I)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p2, v3, :cond_0

    return v4

    :cond_0
    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p2

    invoke-direct {p0, p1, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private ensureBufferCapacity(I)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v1, v1

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, p1, 0x10

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    return-void
.end method

.method private final findCodePoint(I)I
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v3, v3, v4

    if-ge p1, v3, :cond_0

    return v4

    :cond_0
    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v4, v4, -0x2

    aget v3, v3, v4

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v3, v3, -0x1

    return v3

    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v3, -0x1

    :goto_0
    add-int v3, v2, v0

    ushr-int/lit8 v1, v3, 0x1

    if-ne v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method public static from(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public static fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultXSymbolTable()Landroid/icu/text/UnicodeSet$XSymbolTable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    return-object v0
.end method

.method private static declared-synchronized getInclusions(I)Landroid/icu/text/UnicodeSet;
    .locals 5

    const-class v2, Landroid/icu/text/UnicodeSet;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    if-nez v1, :cond_0

    const/16 v1, 0xc

    new-array v1, v1, [Landroid/icu/text/UnicodeSet;

    sput-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    :cond_0
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    aget-object v1, v1, p0

    if-nez v1, :cond_1

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UnicodeSet.getInclusions(unknown src "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_1
    :try_start_1
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    :goto_0
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    aput-object v0, v1, p0

    :cond_1
    sget-object v1, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    aget-object v1, v1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    :pswitch_2
    :try_start_2
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCharacterProperty;->upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCaseProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :pswitch_7
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :pswitch_8
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->addCanonIterPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :pswitch_9
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UCaseProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0

    :pswitch_a
    sget-object v1, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v1, v0}, Landroid/icu/impl/UBiDiProps;->addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static getSingleCP(Ljava/lang/CharSequence;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v1, v5, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Can\'t use zero-length strings in UnicodeSet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    return v3

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    return v1

    :cond_2
    invoke-static {p0, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_3

    return v0

    :cond_3
    return v3
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/icu/lang/CharSequences;->getSingleCodePoint(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method private static matchRest(Landroid/icu/text/Replaceable;IILjava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, p2, :cond_2

    sub-int v1, p2, p1

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_5

    add-int v3, p1, v0

    invoke-interface {p0, v3}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v3

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v1, p1, p2

    if-le v1, v2, :cond_3

    move v1, v2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_5

    sub-int v3, p1, v0

    invoke-interface {p0, v3}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v3

    sub-int v4, v2, v0

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_4

    return v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private static matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I
    .locals 8

    const/4 v7, -0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int v6, v5, p1

    if-le v6, v2, :cond_0

    return v7

    :cond_0
    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v7

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static final max(II)I
    .locals 0

    if-le p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method private static mungeCharName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_0
    const/16 v1, 0x20

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    :goto_2
    return-object p0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method private range(II)[I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput p1, v0, v1

    add-int/lit8 v1, p2, 0x1

    aput v1, v0, v2

    const/high16 v1, 0x110000

    const/4 v2, 0x2

    aput v1, v0, v2

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    :goto_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    add-int/lit8 v1, p2, 0x1

    aput v1, v0, v2

    goto :goto_0
.end method

.method public static resemblesPattern(Ljava/lang/String;I)Z
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->resemblesPropertyPattern(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static resemblesPropertyPattern(Landroid/icu/impl/RuleCharacterIterator;I)Z
    .locals 6

    const/16 v5, 0x5b

    const/4 v3, 0x0

    and-int/lit8 p1, p1, -0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/icu/impl/RuleCharacterIterator;->getPos(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v0

    if-eq v0, v5, :cond_0

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_1

    :cond_0
    and-int/lit8 v4, p1, -0x5

    invoke-virtual {p0, v4}, Landroid/icu/impl/RuleCharacterIterator;->next(I)I

    move-result v1

    if-ne v0, v5, :cond_3

    const/16 v4, 0x3a

    if-ne v1, v4, :cond_2

    const/4 v3, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Landroid/icu/impl/RuleCharacterIterator;->setPos(Ljava/lang/Object;)V

    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/16 v4, 0x4e

    if-eq v1, v4, :cond_4

    const/16 v4, 0x70

    if-ne v1, v4, :cond_5

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/16 v4, 0x50

    if-eq v1, v4, :cond_4

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static resemblesPropertyPattern(Ljava/lang/String;I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    add-int/lit8 v0, p1, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    return v4

    :cond_0
    const-string/jumbo v0, "[:"

    invoke-virtual {p0, p1, v0, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "\\p"

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\\N"

    invoke-virtual {p0, p1, v0, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private retain([III)Landroid/icu/text/UnicodeSet;
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x110000

    iget v9, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v9, p2

    invoke-direct {p0, v9}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    const/4 v6, 0x0

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v2, 0x1

    aget v0, v9, v11

    const/4 v4, 0x1

    aget v1, p1, v11

    move v7, v6

    move v5, v4

    move v3, v2

    :goto_0
    packed-switch p3, :pswitch_data_0

    move v6, v7

    move v4, v5

    move v2, v3

    :goto_1
    move v7, v6

    move v5, v4

    move v3, v2

    goto :goto_0

    :pswitch_0
    if-ge v0, v1, :cond_0

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    move v6, v7

    move v4, v5

    goto :goto_1

    :cond_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v6, v7

    move v2, v3

    goto :goto_1

    :cond_1
    if-ne v0, v10, :cond_3

    :cond_2
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v10, v9, v7

    iput v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iput-object v8, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    :cond_3
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v0, v9, v7

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    goto :goto_1

    :pswitch_1
    if-ge v0, v1, :cond_4

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v0, v9, v7

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    move v4, v5

    goto :goto_1

    :cond_4
    if-ge v1, v0, :cond_5

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v1, v9, v7

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v2, v3

    goto :goto_1

    :cond_5
    if-eq v0, v10, :cond_2

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v0, v9, v7

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    goto :goto_1

    :pswitch_2
    if-ge v0, v1, :cond_6

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    move v6, v7

    move v4, v5

    goto/16 :goto_1

    :cond_6
    if-ge v1, v0, :cond_7

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v1, v9, v7

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v2, v3

    goto/16 :goto_1

    :cond_7
    if-eq v0, v10, :cond_2

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v6, v7

    goto/16 :goto_1

    :pswitch_3
    if-ge v1, v0, :cond_8

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v6, v7

    move v2, v3

    goto/16 :goto_1

    :cond_8
    if-ge v0, v1, :cond_9

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v0, v9, v7

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    move v4, v5

    goto/16 :goto_1

    :cond_9
    if-eq v0, v10, :cond_2

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    xor-int/lit8 p3, p3, 0x2

    move v6, v7

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static setDefaultXSymbolTable(Landroid/icu/text/UnicodeSet$XSymbolTable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Landroid/icu/text/UnicodeSet;->INCLUSIONS:[Landroid/icu/text/UnicodeSet;

    sput-object p0, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    return-void
.end method

.method private spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 6

    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-eq p3, v5, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v3, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_0
    if-eqz p4, :cond_1

    iput v1, p4, Landroid/icu/util/OutputInt;->value:I

    :cond_1
    return v3

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    if-ge v3, v2, :cond_0

    goto :goto_1
.end method

.method private static syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/impl/RuleCharacterIterator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toArray(Landroid/icu/text/UnicodeSet;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private xor([III)Landroid/icu/text/UnicodeSet;
    .locals 12

    const/high16 v11, 0x110000

    const/4 v10, 0x0

    iget v9, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/2addr v9, p2

    invoke-direct {p0, v9}, Landroid/icu/text/UnicodeSet;->ensureBufferCapacity(I)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v2, 0x1

    aget v0, v9, v10

    const/4 v9, 0x1

    if-eq p3, v9, :cond_0

    const/4 v9, 0x2

    if-ne p3, v9, :cond_2

    :cond_0
    const/4 v1, 0x0

    aget v9, p1, v4

    if-nez v9, :cond_1

    const/4 v4, 0x1

    aget v1, p1, v4

    :cond_1
    move v7, v6

    move v5, v4

    move v3, v2

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v0, v9, v7

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    move v4, v5

    :goto_1
    move v7, v6

    move v5, v4

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    aget v1, p1, v10

    move v7, v6

    move v5, v4

    move v3, v2

    goto :goto_0

    :cond_3
    if-ge v1, v0, :cond_4

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v1, v9, v7

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    move v2, v3

    goto :goto_1

    :cond_4
    if-eq v0, v11, :cond_5

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v9, v3

    add-int/lit8 v4, v5, 0x1

    aget v1, p1, v5

    move v6, v7

    goto :goto_1

    :cond_5
    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    add-int/lit8 v6, v7, 0x1

    aput v11, v9, v7

    iput v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v9, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iput-object v8, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public _generatePattern(Ljava/lang/StringBuffer;Z)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->_generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public _generatePattern(Ljava/lang/StringBuffer;ZZ)Ljava/lang/StringBuffer;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public final add(I)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public add(II)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public final add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public add(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public addAll(II)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add([III)Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-direct {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->add_unchecked(II)Landroid/icu/text/UnicodeSet;

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs addAll([Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addAllTo(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>(TT;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public addAllTo([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->addAllTo(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public addBridges(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v0, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSetIterator;->nextRange()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v3, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    const v3, 0x10ffff

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget v3, v0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    invoke-virtual {p1, v2, v3}, Landroid/icu/text/UnicodeSet;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    iget v3, v0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    invoke-virtual {p0, v2, v3}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public addMatchSetTo(Landroid/icu/text/UnicodeSet;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method public applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;

    invoke-direct {v0, p2}, Landroid/icu/text/UnicodeSet$GeneralCategoryMaskFilter;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    :goto_0
    return-object p0

    :cond_0
    const/16 v0, 0x7000

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;

    invoke-direct {v0, p2}, Landroid/icu/text/UnicodeSet$ScriptExtensionsFilter;-><init>(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/icu/text/UnicodeSet$IntPropertyFilter;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/UnicodeSet$IntPropertyFilter;-><init>(II)V

    sget-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1, p1}, Landroid/icu/impl/UCharacterProperty;->getSource(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public final applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public applyPattern(Ljava/lang/String;I)Landroid/icu/text/UnicodeSet;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    if-nez p2, :cond_3

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, v4}, Ljava/text/ParsePosition;-><init>(I)V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Landroid/icu/impl/RuleCharacterIterator;

    invoke-direct {v0, p1, p3, p2}, Landroid/icu/impl/RuleCharacterIterator;-><init>(Ljava/lang/String;Landroid/icu/text/SymbolTable;Ljava/text/ParsePosition;)V

    invoke-direct {p0, v0, p3, v3, p4}, Landroid/icu/text/UnicodeSet;->applyPattern(Landroid/icu/impl/RuleCharacterIterator;Landroid/icu/text/SymbolTable;Ljava/lang/Appendable;I)V

    invoke-virtual {v0}, Landroid/icu/impl/RuleCharacterIterator;->inVariable()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Extra chars in variable value"

    invoke-static {v0, v4}, Landroid/icu/text/UnicodeSet;->syntaxError(Landroid/icu/impl/RuleCharacterIterator;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2

    invoke-static {p1, v1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Parse of \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" failed at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public applyPattern(Ljava/lang/String;Z)Landroid/icu/text/UnicodeSet;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/UnicodeSet;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SymbolTable;)Landroid/icu/text/UnicodeSet;
    .locals 18

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    instance-of v15, v0, Landroid/icu/text/UnicodeSet$XSymbolTable;

    if-eqz v15, :cond_0

    check-cast p3, Landroid/icu/text/UnicodeSet$XSymbolTable;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    move-result v15

    if-eqz v15, :cond_0

    return-object p0

    :cond_0
    sget-object v15, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    if-eqz v15, :cond_1

    sget-object v15, Landroid/icu/text/UnicodeSet;->XSYMBOL_TABLE:Landroid/icu/text/UnicodeSet$XSymbolTable;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v15, v0, v1, v2}, Landroid/icu/text/UnicodeSet$XSymbolTable;->applyPropertyAlias(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    move-result v15

    if-eqz v15, :cond_1

    return-object p0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_d

    invoke-static/range {p1 .. p1}, Landroid/icu/lang/UCharacter;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v9

    const/16 v15, 0x1005

    if-ne v9, v15, :cond_2

    const/16 v9, 0x2000

    :cond_2
    if-ltz v9, :cond_6

    const/16 v15, 0x39

    if-ge v9, v15, :cond_6

    :cond_3
    :try_start_0
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :cond_4
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    :cond_5
    if-eqz v8, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_14

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Invalid property value"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_6
    const/16 v15, 0x1000

    if-lt v9, v15, :cond_7

    const/16 v15, 0x1016

    if-lt v9, v15, :cond_3

    :cond_7
    const/16 v15, 0x2000

    if-lt v9, v15, :cond_8

    const/16 v15, 0x2001

    if-lt v9, v15, :cond_3

    :cond_8
    sparse-switch v9, :sswitch_data_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Unsupported property"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :catch_0
    move-exception v6

    const/16 v15, 0x1002

    if-eq v9, v15, :cond_9

    const/16 v15, 0x1010

    if-ne v9, v15, :cond_b

    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_a

    const/16 v15, 0xff

    if-le v11, v15, :cond_4

    :cond_a
    throw v6

    :cond_b
    const/16 v15, 0x1011

    if-eq v9, v15, :cond_9

    throw v6

    :sswitch_0
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    new-instance v15, Landroid/icu/text/UnicodeSet$NumericValueFilter;

    invoke-direct {v15, v12, v13}, Landroid/icu/text/UnicodeSet$NumericValueFilter;-><init>(D)V

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    return-object p0

    :sswitch_1
    invoke-static/range {p2 .. p2}, Landroid/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/lang/UCharacter;->getCharFromExtendedName(Ljava/lang/String;)I

    move-result v5

    const/4 v15, -0x1

    if-ne v5, v15, :cond_c

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Invalid character name"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/icu/text/UnicodeSet;->add_unchecked(I)Landroid/icu/text/UnicodeSet;

    return-object p0

    :sswitch_2
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Unicode_1_Name (na1) not supported"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :sswitch_3
    invoke-static/range {p2 .. p2}, Landroid/icu/text/UnicodeSet;->mungeCharName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Landroid/icu/util/VersionInfo;

    move-result-object v14

    new-instance v15, Landroid/icu/text/UnicodeSet$VersionFilter;

    invoke-direct {v15, v14}, Landroid/icu/text/UnicodeSet$VersionFilter;-><init>(Landroid/icu/util/VersionInfo;)V

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Landroid/icu/text/UnicodeSet;->applyFilter(Landroid/icu/text/UnicodeSet$Filter;I)Landroid/icu/text/UnicodeSet;

    return-object p0

    :sswitch_4
    const/16 v15, 0x100a

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v11

    goto/16 :goto_0

    :cond_d
    sget-object v10, Landroid/icu/impl/UPropertyAliases;->INSTANCE:Landroid/icu/impl/UPropertyAliases;

    const/16 v9, 0x2000

    move-object/from16 v0, p1

    invoke-virtual {v10, v9, v0}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v11

    const/4 v15, -0x1

    if-ne v11, v15, :cond_4

    const/16 v9, 0x100a

    move-object/from16 v0, p1

    invoke-virtual {v10, v9, v0}, Landroid/icu/impl/UPropertyAliases;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v11

    const/4 v15, -0x1

    if-ne v11, v15, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/icu/impl/UPropertyAliases;->getPropertyEnum(Ljava/lang/CharSequence;)I

    move-result v9

    const/4 v15, -0x1

    if-ne v9, v15, :cond_e

    const/4 v9, -0x1

    :cond_e
    if-ltz v9, :cond_f

    const/16 v15, 0x39

    if-ge v9, v15, :cond_f

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v15, -0x1

    if-ne v9, v15, :cond_13

    const-string/jumbo v15, "ANY"

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_10

    const/4 v15, 0x0

    const v16, 0x10ffff

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    return-object p0

    :cond_10
    const-string/jumbo v15, "ASCII"

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_11

    const/4 v15, 0x0

    const/16 v16, 0x7f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/icu/text/UnicodeSet;->set(II)Landroid/icu/text/UnicodeSet;

    return-object p0

    :cond_11
    const-string/jumbo v15, "Assigned"

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Landroid/icu/impl/UPropertyAliases;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_12

    const/16 v9, 0x2000

    const/4 v11, 0x1

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_12
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Invalid property alias: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_13
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Missing property value"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_14
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x4000 -> :sswitch_3
        0x4005 -> :sswitch_1
        0x400b -> :sswitch_2
        0x7000 -> :sswitch_4
    .end sparse-switch
.end method

.method public charAt(I)I
    .locals 6

    if-ltz p1, :cond_1

    iget v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    and-int/lit8 v3, v5, -0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v2, 0x1

    aget v4, v5, v2

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v1, 0x1

    aget v5, v5, v1

    sub-int v0, v5, v4

    if-ge p1, v0, :cond_0

    add-int v5, v4, p1

    return v5

    :cond_0
    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method public clear()Landroid/icu/text/UnicodeSet;
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    const/high16 v1, 0x110000

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    iput-object v1, v0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    iput-object v1, v0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/UnicodeSet;
    .locals 2

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    sget-boolean v1, Landroid/icu/text/UnicodeSet;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public closeOver(I)Landroid/icu/text/UnicodeSet;
    .locals 18

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    and-int/lit8 v3, p1, 0x6

    if-eqz v3, :cond_7

    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    new-instance v9, Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    sget-object v5, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    iget-object v3, v9, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->clear()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v6, v3, [I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v8

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    move v2, v15

    :goto_1
    if-gt v2, v8, :cond_2

    invoke-virtual {v1, v2, v9}, Landroid/icu/impl/UCaseProps;->addCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v15

    :goto_2
    if-gt v2, v8, :cond_2

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v12

    invoke-static {v9, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v12

    invoke-static {v9, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v12

    invoke-static {v9, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/StringBuilder;I)I

    move-result v12

    invoke-static {v9, v12, v4}, Landroid/icu/text/UnicodeSet;->addCaseMapping(Landroid/icu/text/UnicodeSet;ILjava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v13, v3}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v9}, Landroid/icu/impl/UCaseProps;->addStringCaseClosure(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_3

    :cond_5
    invoke-static {v5}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Landroid/icu/lang/UCharacter;->toLowerCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, v16

    invoke-static {v5, v0, v7}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, v16

    invoke-static {v5, v0}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    :cond_7
    return-object p0
.end method

.method public compact()Landroid/icu/text/UnicodeSet;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    :cond_0
    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->rangeList:[I

    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    return-object p0
.end method

.method public compareTo(Landroid/icu/text/UnicodeSet;)I
    .locals 1

    sget-object v0, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->compareTo(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I

    move-result v0

    return v0
.end method

.method public compareTo(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$ComparisonStyle;)I
    .locals 10

    const/4 v7, -0x1

    const/high16 v9, 0x110000

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v4, Landroid/icu/text/UnicodeSet$ComparisonStyle;->LEXICOGRAPHIC:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-eq p2, v4, :cond_3

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v8

    sub-int v0, v4, v8

    if-eqz v0, :cond_3

    if-gez v0, :cond_2

    move v4, v5

    :goto_0
    sget-object v8, Landroid/icu/text/UnicodeSet$ComparisonStyle;->SHORTER_FIRST:Landroid/icu/text/UnicodeSet$ComparisonStyle;

    if-ne p2, v8, :cond_0

    move v6, v5

    :cond_0
    if-ne v4, v6, :cond_1

    move v5, v7

    :cond_1
    return v5

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v1

    iget-object v6, p1, Landroid/icu/text/UnicodeSet;->list:[I

    aget v6, v6, v1

    sub-int v3, v4, v6

    if-eqz v3, :cond_9

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v1

    if-ne v4, v9, :cond_5

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    return v5

    :cond_4
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v1

    invoke-static {v2, v4}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result v4

    return v4

    :cond_5
    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v1

    if-ne v4, v9, :cond_7

    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    return v7

    :cond_6
    iget-object v4, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v1

    invoke-static {v2, v4}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/CharSequence;I)I

    move-result v4

    neg-int v4, v4

    return v4

    :cond_7
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_8

    :goto_2
    return v3

    :cond_8
    neg-int v3, v3

    goto :goto_2

    :cond_9
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v1

    if-ne v4, v9, :cond_a

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v5, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-static {v4, v5}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v4

    return v4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public compareTo(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/icu/text/UnicodeSet;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->compareTo(Landroid/icu/text/UnicodeSet;)I

    move-result v0

    return v0
.end method

.method public complement()Landroid/icu/text/UnicodeSet;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0

    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSet;->ensureCapacity(I)V

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aput v3, v0, v3

    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    goto :goto_0
.end method

.method public final complement(I)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public complement(II)Landroid/icu/text/UnicodeSet;
    .locals 5

    const v0, 0x10ffff

    const/4 v4, 0x6

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gt p1, p2, :cond_4

    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->xor([III)Landroid/icu/text/UnicodeSet;

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object p0
.end method

.method public final complement(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    :goto_1
    return-object p0

    :cond_0
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    goto :goto_1
.end method

.method public complementAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->xor([III)Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/4 v2, 0x5

    invoke-static {v0, v2, v1}, Landroid/icu/impl/SortedSetRelation;->doOperation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Ljava/util/SortedSet;

    return-object p0
.end method

.method public final complementAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->complementAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public contains(I)Z
    .locals 6

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const v2, 0x10ffff

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid code point U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, p1

    const/4 v3, 0x6

    invoke-static {v4, v5, v3}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {v1, p1}, Landroid/icu/impl/BMPSet;->contains(I)Z

    move-result v1

    return v1

    :cond_2
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v1, p1}, Landroid/icu/impl/UnicodeSetStringSpan;->contains(I)Z

    move-result v1

    return v1

    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public contains(II)Z
    .locals 7

    const v2, 0x10ffff

    const/4 v6, 0x6

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid code point U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, p1

    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v2, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid code point U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, p2

    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/text/UnicodeSet;->findCodePoint(I)I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v0

    if-ge p2, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public final contains(Ljava/lang/CharSequence;)Z
    .locals 3

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    return v1
.end method

.method public containsAll(Landroid/icu/text/UnicodeSet;)Z
    .locals 16

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v14, -0x1

    move-object/from16 v0, p1

    iget v14, v0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v4, v14, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v5

    move v3, v2

    :goto_0
    if-eqz v10, :cond_7

    if-lt v3, v1, :cond_2

    if-eqz v11, :cond_1

    if-lt v6, v4, :cond_1

    move v2, v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v14, v15}, Ljava/util/TreeSet;->containsAll(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_5

    const/4 v14, 0x0

    return v14

    :cond_1
    const/4 v14, 0x0

    return v14

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v12, v14, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v2, 0x1

    aget v7, v14, v2

    move v2, v3

    :goto_1
    if-eqz v11, :cond_6

    if-ge v6, v4, :cond_0

    add-int/lit8 v5, v6, 0x1

    aget v13, v9, v6

    add-int/lit8 v6, v5, 0x1

    aget v8, v9, v5

    move v5, v6

    :goto_2
    if-lt v13, v7, :cond_3

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v6, v5

    move v3, v2

    goto :goto_0

    :cond_3
    if-lt v13, v12, :cond_4

    if-gt v8, v7, :cond_4

    const/4 v10, 0x0

    const/4 v11, 0x1

    move v6, v5

    move v3, v2

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    return v14

    :cond_5
    const/4 v14, 0x1

    return v14

    :cond_6
    move v5, v6

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public containsAll(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {p1, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, p1, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;I)Z

    move-result v2

    return v2

    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public containsNone(II)Z
    .locals 7

    const v2, 0x10ffff

    const/4 v6, 0x6

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid code point U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, p1

    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v2, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid code point U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, p2

    invoke-static {v4, v5, v6}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v0, -0x1

    :cond_4
    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    if-ge p1, v2, :cond_4

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v0

    if-ge p2, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public containsNone(Landroid/icu/text/UnicodeSet;)Z
    .locals 17

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/icu/text/UnicodeSet;->list:[I

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v1, v14, -0x1

    move-object/from16 v0, p1

    iget v14, v0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v4, v14, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v5

    move v3, v2

    :goto_0
    if-eqz v10, :cond_6

    if-lt v3, v1, :cond_1

    move v2, v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-static {v14, v0, v15}, Landroid/icu/impl/SortedSetRelation;->hasRelation(Ljava/util/SortedSet;ILjava/util/SortedSet;)Z

    move-result v14

    if-nez v14, :cond_4

    const/4 v14, 0x0

    return v14

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v2, v3, 0x1

    aget v12, v14, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v3, v2, 0x1

    aget v7, v14, v2

    move v2, v3

    :goto_1
    if-eqz v11, :cond_5

    if-ge v6, v4, :cond_0

    add-int/lit8 v5, v6, 0x1

    aget v13, v9, v6

    add-int/lit8 v6, v5, 0x1

    aget v8, v9, v5

    move v5, v6

    :goto_2
    if-lt v13, v7, :cond_2

    const/4 v10, 0x1

    const/4 v11, 0x0

    move v6, v5

    move v3, v2

    goto :goto_0

    :cond_2
    if-lt v12, v8, :cond_3

    const/4 v10, 0x0

    const/4 v11, 0x1

    move v6, v5

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    return v14

    :cond_4
    const/4 v14, 0x1

    return v14

    :cond_5
    move v5, v6

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method public containsNone(Ljava/lang/CharSequence;)Z
    .locals 2

    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsNone(Ljava/lang/Iterable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public final containsSome(II)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->containsNone(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final containsSome(Landroid/icu/text/UnicodeSet;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Landroid/icu/text/UnicodeSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final containsSome(Ljava/lang/CharSequence;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final containsSome(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->containsNone(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return v6

    :cond_0
    if-ne p0, p1, :cond_1

    return v7

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/icu/text/UnicodeSet;

    move-object v3, v0

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    iget v5, v3, Landroid/icu/text/UnicodeSet;->len:I

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v4, v4, v2

    iget-object v5, v3, Landroid/icu/text/UnicodeSet;->list:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_3

    return v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v5, v3, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_5

    return v6

    :catch_0
    move-exception v1

    return v6

    :cond_5
    return v7
.end method

.method public findIn(Ljava/lang/CharSequence;IZ)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eq v1, p3, :cond_1

    :cond_0
    return p2

    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0
.end method

.method public findLastIn(Ljava/lang/CharSequence;IZ)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eq v1, p3, :cond_2

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, -0x1

    :cond_1
    return p2

    :cond_2
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    sub-int/2addr p2, v1

    goto :goto_0
.end method

.method public freeze()Landroid/icu/text/UnicodeSet;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->isFrozen()Z

    move-result v4

    if-nez v4, :cond_3

    iput-object v5, p0, Landroid/icu/text/UnicodeSet;->buffer:[I

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    array-length v4, v4

    iget v5, p0, Landroid/icu/text/UnicodeSet;->len:I

    add-int/lit8 v5, v5, 0x10

    if-le v4, v5, :cond_1

    iget v4, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->list:[I

    new-array v4, v0, [I

    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    move v1, v0

    move v2, v1

    :goto_1
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_1

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v5, v3, v1

    aput v5, v4, v1

    move v2, v1

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v6, 0x7f

    invoke-direct {v4, p0, v5, v6}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    :cond_2
    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v4}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_2
    return-object p0

    :cond_4
    new-instance v4, Landroid/icu/impl/BMPSet;

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v6, p0, Landroid/icu/text/UnicodeSet;->len:I

    invoke-direct {v4, v5, v6}, Landroid/icu/impl/BMPSet;-><init>([II)V

    iput-object v4, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    goto :goto_2
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public getRangeCount()I
    .locals 1

    iget v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRangeEnd(I)I
    .locals 2

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRangeStart(I)I
    .locals 2

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getRegexEquivalent()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "(?:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v5, v4}, Landroid/icu/text/UnicodeSet;->appendNewPattern(Ljava/lang/Appendable;ZZ)Ljava/lang/Appendable;

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v5}, Landroid/icu/text/UnicodeSet;->_appendToPat(Ljava/lang/Appendable;Ljava/lang/String;Z)Ljava/lang/Appendable;

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public hashCode()I
    .locals 3

    iget v1, p0, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-ge v0, v2, :cond_0

    const v2, 0xf4243

    mul-int/2addr v1, v2

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->list:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(I)I
    .locals 10

    if-ltz p1, :cond_0

    const v5, 0x10ffff

    if-le p1, v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid code point U+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, p1

    const/4 v7, 0x6

    invoke-static {v8, v9, v7}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v1, v0, 0x1

    aget v4, v5, v0

    if-ge p1, v4, :cond_2

    const/4 v5, -0x1

    return v5

    :cond_2
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->list:[I

    add-int/lit8 v0, v1, 0x1

    aget v2, v5, v1

    if-ge p1, v2, :cond_3

    add-int v5, v3, p1

    sub-int/2addr v5, v4

    return v5

    :cond_3
    sub-int v5, v2, v4

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/text/UnicodeSet;->len:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;

    invoke-direct {v0, p0}, Landroid/icu/text/UnicodeSet$UnicodeSetIterator2;-><init>(Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 10

    const/4 v8, 0x0

    aget v8, p2, v8

    if-ne v8, p3, :cond_2

    const v8, 0xffff

    invoke-virtual {p0, v8}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p4, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x2

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    return v8

    :cond_2
    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->size()I

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    aget v8, p2, v8

    if-ge v8, p3, :cond_5

    const/4 v2, 0x1

    :goto_1
    const/4 v8, 0x0

    aget v8, p2, v8

    invoke-interface {p1, v8}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v1

    const/4 v3, 0x0

    iget-object v8, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v2, :cond_6

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v2, :cond_7

    if-le v0, v1, :cond_7

    :cond_4
    :goto_3
    if-eqz v3, :cond_c

    const/4 v8, 0x0

    aget v9, p2, v8

    if-eqz v2, :cond_b

    :goto_4
    add-int/2addr v9, v3

    aput v9, p2, v8

    const/4 v8, 0x2

    return v8

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_7
    if-ne v0, v1, :cond_3

    const/4 v8, 0x0

    aget v8, p2, v8

    invoke-static {p1, v8, p3, v6}, Landroid/icu/text/UnicodeSet;->matchRest(Landroid/icu/text/Replaceable;IILjava/lang/String;)I

    move-result v4

    if-eqz p4, :cond_9

    if-eqz v2, :cond_8

    const/4 v8, 0x0

    aget v8, p2, v8

    sub-int v5, p3, v8

    :goto_5
    if-ne v4, v5, :cond_9

    const/4 v8, 0x1

    return v8

    :cond_8
    const/4 v8, 0x0

    aget v8, p2, v8

    sub-int v5, v8, p3

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v4, v8, :cond_3

    if-le v4, v3, :cond_a

    move v3, v4

    :cond_a
    if-eqz v2, :cond_3

    if-ge v4, v3, :cond_3

    goto :goto_3

    :cond_b
    neg-int v3, v3

    goto :goto_4

    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeFilter;->matches(Landroid/icu/text/Replaceable;[IIZ)I

    move-result v8

    return v8
.end method

.method public matchesAt(Ljava/lang/CharSequence;I)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v8, 0x0

    const/4 v4, -0x1

    iget-object v7, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v1, :cond_0

    if-le v2, v1, :cond_0

    :cond_1
    :goto_0
    const/4 v7, 0x2

    if-ge v4, v7, :cond_2

    invoke-static {p1, p2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    :cond_2
    add-int v7, p2, v4

    return v7

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_4
    invoke-static {p1, p2, v6}, Landroid/icu/text/UnicodeSet;->matchesAt(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)I

    move-result v5

    if-gt v4, v5, :cond_1

    move v4, v5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0
.end method

.method public matchesIndexValue(I)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v1

    and-int/lit16 v6, v3, -0x100

    and-int/lit16 v7, v1, -0x100

    if-ne v6, v7, :cond_0

    and-int/lit16 v6, v3, 0xff

    if-gt v6, p1, :cond_2

    and-int/lit16 v6, v1, 0xff

    if-gt p1, v6, :cond_2

    return v9

    :cond_0
    and-int/lit16 v6, v3, 0xff

    if-le v6, p1, :cond_1

    and-int/lit16 v6, v1, 0xff

    if-gt p1, v6, :cond_2

    :cond_1
    return v9

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->size()I

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v8}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    if-ne v6, p1, :cond_4

    return v9

    :cond_5
    return v8
.end method

.method public ranges()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/icu/text/UnicodeSet$EntryRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/text/UnicodeSet$EntryRangeIterable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/text/UnicodeSet$EntryRangeIterable;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet$EntryRangeIterable;)V

    return-object v0
.end method

.method public final remove(I)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public remove(II)Landroid/icu/text/UnicodeSet;
    .locals 5

    const v0, 0x10ffff

    const/4 v4, 0x6

    const/4 v1, 0x2

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gt p1, p2, :cond_4

    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    :cond_4
    return-object p0
.end method

.method public final remove(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 3

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final removeAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->removeAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->remove(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final removeAllStrings()Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final retain(I)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UnicodeSet;->retain(II)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public retain(II)Landroid/icu/text/UnicodeSet;
    .locals 5

    const v0, 0x10ffff

    const/4 v4, 0x6

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    if-le p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid code point U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gt p1, p2, :cond_4

    invoke-direct {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->range(II)[I

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    :goto_0
    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public final retain(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 5

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->getSingleCP(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0, v0, v0}, Landroid/icu/text/UnicodeSet;->retain(II)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    iget v1, p1, Landroid/icu/text/UnicodeSet;->len:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/UnicodeSet;->retain([III)Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->retainAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final retainAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;
    .locals 1

    invoke-static {p1}, Landroid/icu/text/UnicodeSet;->fromAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method public retainAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Landroid/icu/text/UnicodeSet;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/Iterable;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public set(II)Landroid/icu/text/UnicodeSet;
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UnicodeSet;->complement(II)Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;->checkFrozen()V

    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->list:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->list:[I

    iget v0, p1, Landroid/icu/text/UnicodeSet;->len:I

    iput v0, p0, Landroid/icu/text/UnicodeSet;->len:I

    iget-object v0, p1, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    iput-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    return-object p0
.end method

.method public size()I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v3

    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/2addr v3, v2

    return v3
.end method

.method public span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {v3, p1, p2, p3, v5}, Landroid/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v3

    return v3

    :cond_1
    if-lt p2, v0, :cond_0

    return v0

    :cond_2
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    return v3

    :cond_3
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v3, :cond_4

    const/16 v2, 0x21

    :goto_0
    new-instance v1, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v3, v2}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    invoke-virtual {v1}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    return v3

    :cond_4
    const/16 v2, 0x22

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v3

    return v3
.end method

.method public span(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0
.end method

.method public spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "outCount must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_1
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v3

    return v3

    :cond_2
    if-lt p2, v0, :cond_1

    return v0

    :cond_3
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/icu/impl/BMPSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v3

    return v3

    :cond_4
    iget-object v3, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v3, :cond_5

    const/16 v2, 0x21

    :goto_0
    or-int/lit8 v2, v2, 0x40

    new-instance v1, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v3, v2}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/icu/impl/UnicodeSetStringSpan;->spanAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v3

    return v3

    :cond_5
    const/16 v2, 0x22

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/UnicodeSet;->spanCodePointsAndCount(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I

    move-result v3

    return v3
.end method

.method public spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 7

    const/4 v5, 0x0

    if-gtz p2, :cond_0

    return v5

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le p2, v5, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_1
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->bmpSet:Landroid/icu/impl/BMPSet;

    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/impl/BMPSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    return v5

    :cond_2
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->stringSpan:Landroid/icu/impl/UnicodeSetStringSpan;

    invoke-virtual {v5, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    return v5

    :cond_3
    iget-object v5, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v5, :cond_4

    const/16 v4, 0x11

    :goto_0
    new-instance v3, Landroid/icu/impl/UnicodeSetStringSpan;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, p0, v5, v4}, Landroid/icu/impl/UnicodeSetStringSpan;-><init>(Landroid/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V

    invoke-virtual {v3}, Landroid/icu/impl/UnicodeSetStringSpan;->needsStringSpanUTF16()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3, p1, p2, p3}, Landroid/icu/impl/UnicodeSetStringSpan;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v5

    return v5

    :cond_4
    const/16 v4, 0x12

    goto :goto_0

    :cond_5
    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-eq p3, v5, :cond_7

    const/4 v2, 0x1

    :goto_1
    move v1, p2

    :goto_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eq v2, v5, :cond_8

    :cond_6
    return v1

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v1, v5

    if-lez v1, :cond_6

    goto :goto_2
.end method

.method public spanBack(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    return v0
.end method

.method public strings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public stripFrom(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, p1, v1, v3}, Landroid/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/UnicodeSet;->findIn(Ljava/lang/CharSequence;IZ)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toPattern(Z)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/icu/text/UnicodeSet;->_toPattern(Ljava/lang/Appendable;Z)Ljava/lang/Appendable;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/icu/text/UnicodeSet;->pat:Ljava/lang/String;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
