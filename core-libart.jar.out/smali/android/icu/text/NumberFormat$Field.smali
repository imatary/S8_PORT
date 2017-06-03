.class public Landroid/icu/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final CURRENCY:Landroid/icu/text/NumberFormat$Field;

.field public static final DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

.field public static final EXPONENT:Landroid/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

.field public static final FRACTION:Landroid/icu/text/NumberFormat$Field;

.field public static final GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

.field public static final INTEGER:Landroid/icu/text/NumberFormat$Field;

.field public static final PERCENT:Landroid/icu/text/NumberFormat$Field;

.field public static final PERMILLE:Landroid/icu/text/NumberFormat$Field;

.field public static final SIGN:Landroid/icu/text/NumberFormat$Field;

.field static final serialVersionUID:J = -0x3ead070c1cf65f72L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "sign"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "integer"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "fraction"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "exponent"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "exponent sign"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "exponent symbol"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "decimal separator"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "grouping separator"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "percent"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "per mille"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    new-instance v0, Landroid/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "currency"

    invoke-direct {v0, v1}, Landroid/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_3
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    return-object v0

    :cond_a
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
