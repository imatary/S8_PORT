.class Landroid/icu/text/NullTransliterator;
.super Landroid/icu/text/Transliterator;
.source "NullTransliterator.java"


# static fields
.field static SHORT_ID:Ljava/lang/String;

.field static _ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "Null"

    sput-object v0, Landroid/icu/text/NullTransliterator;->SHORT_ID:Ljava/lang/String;

    const-string/jumbo v0, "Any-Null"

    sput-object v0, Landroid/icu/text/NullTransliterator;->_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroid/icu/text/NullTransliterator;->_ID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 0

    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 1

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    return-void
.end method
