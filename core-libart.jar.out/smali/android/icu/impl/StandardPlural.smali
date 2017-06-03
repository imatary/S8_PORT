.class public final enum Landroid/icu/impl/StandardPlural;
.super Ljava/lang/Enum;
.source "StandardPlural.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/impl/StandardPlural;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/StandardPlural;

.field public static final COUNT:I

.field public static final enum FEW:Landroid/icu/impl/StandardPlural;

.field public static final enum MANY:Landroid/icu/impl/StandardPlural;

.field public static final enum ONE:Landroid/icu/impl/StandardPlural;

.field public static final enum OTHER:Landroid/icu/impl/StandardPlural;

.field public static final OTHER_INDEX:I

.field public static final enum TWO:Landroid/icu/impl/StandardPlural;

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/StandardPlural;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ZERO:Landroid/icu/impl/StandardPlural;


# instance fields
.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/icu/impl/StandardPlural;

    const-string/jumbo v1, "ZERO"

    const-string/jumbo v2, "zero"

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->ZERO:Landroid/icu/impl/StandardPlural;

    new-instance v0, Landroid/icu/impl/StandardPlural;

    const-string/jumbo v1, "ONE"

    const-string/jumbo v2, "one"

    invoke-direct {v0, v1, v5, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    new-instance v0, Landroid/icu/impl/StandardPlural;

    const-string/jumbo v1, "TWO"

    const-string/jumbo v2, "two"

    invoke-direct {v0, v1, v6, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->TWO:Landroid/icu/impl/StandardPlural;

    new-instance v0, Landroid/icu/impl/StandardPlural;

    const-string/jumbo v1, "FEW"

    const-string/jumbo v2, "few"

    invoke-direct {v0, v1, v7, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->FEW:Landroid/icu/impl/StandardPlural;

    new-instance v0, Landroid/icu/impl/StandardPlural;

    const-string/jumbo v1, "MANY"

    const-string/jumbo v2, "many"

    invoke-direct {v0, v1, v8, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->MANY:Landroid/icu/impl/StandardPlural;

    new-instance v0, Landroid/icu/impl/StandardPlural;

    const-string/jumbo v1, "OTHER"

    const-string/jumbo v2, "other"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/impl/StandardPlural;

    sget-object v1, Landroid/icu/impl/StandardPlural;->ZERO:Landroid/icu/impl/StandardPlural;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/StandardPlural;->TWO:Landroid/icu/impl/StandardPlural;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/impl/StandardPlural;->FEW:Landroid/icu/impl/StandardPlural;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/impl/StandardPlural;->MANY:Landroid/icu/impl/StandardPlural;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/StandardPlural;->$VALUES:[Landroid/icu/impl/StandardPlural;

    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    invoke-static {}, Landroid/icu/impl/StandardPlural;->values()[Landroid/icu/impl/StandardPlural;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    sget-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    return-void
.end method

.method public static final fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;
    .locals 3

    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final indexFromString(Ljava/lang/CharSequence;)I
    .locals 3

    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final indexOrNegativeFromString(Ljava/lang/CharSequence;)I
    .locals 2

    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static final indexOrOtherIndexFromString(Ljava/lang/CharSequence;)I
    .locals 2

    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    goto :goto_0
.end method

.method public static final orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "one"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    return-object v0

    :cond_1
    const-string/jumbo v0, "two"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/icu/impl/StandardPlural;->TWO:Landroid/icu/impl/StandardPlural;

    return-object v0

    :cond_2
    const-string/jumbo v0, "few"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/StandardPlural;->FEW:Landroid/icu/impl/StandardPlural;

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "many"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/icu/impl/StandardPlural;->MANY:Landroid/icu/impl/StandardPlural;

    return-object v0

    :cond_3
    const-string/jumbo v0, "zero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/StandardPlural;->ZERO:Landroid/icu/impl/StandardPlural;

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/StandardPlural;
    .locals 1

    const-class v0, Landroid/icu/impl/StandardPlural;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/StandardPlural;

    return-object v0
.end method

.method public static values()[Landroid/icu/impl/StandardPlural;
    .locals 1

    sget-object v0, Landroid/icu/impl/StandardPlural;->$VALUES:[Landroid/icu/impl/StandardPlural;

    return-object v0
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    return-object v0
.end method
