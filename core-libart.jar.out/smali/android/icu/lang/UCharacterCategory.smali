.class public final Landroid/icu/lang/UCharacterCategory;
.super Ljava/lang/Object;
.source "UCharacterCategory.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterCategory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "Unassigned"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "Letter, Uppercase"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "Letter, Lowercase"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "Letter, Titlecase"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "Letter, Modifier"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "Letter, Other"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "Mark, Non-Spacing"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "Mark, Enclosing"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "Mark, Spacing Combining"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "Number, Decimal Digit"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "Number, Letter"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "Number, Other"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "Separator, Space"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "Separator, Line"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "Separator, Paragraph"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "Other, Control"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "Other, Format"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "Other, Private Use"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "Other, Surrogate"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "Punctuation, Dash"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "Punctuation, Open"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "Punctuation, Close"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "Punctuation, Connector"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "Punctuation, Other"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "Symbol, Math"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "Symbol, Currency"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "Symbol, Modifier"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "Symbol, Other"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "Punctuation, Initial quote"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "Punctuation, Final quote"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method
