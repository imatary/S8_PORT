.class public final Landroid/icu/lang/UCharacterDirection;
.super Ljava/lang/Object;
.source "UCharacterDirection.java"

# interfaces
.implements Landroid/icu/lang/UCharacterEnums$ECharacterDirection;


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
    const-string/jumbo v0, "Left-to-Right"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "Right-to-Left"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "European Number"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "European Number Separator"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "European Number Terminator"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "Arabic Number"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "Common Number Separator"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "Paragraph Separator"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "Segment Separator"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "Whitespace"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "Other Neutrals"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "Left-to-Right Embedding"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "Left-to-Right Override"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "Right-to-Left Arabic"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "Right-to-Left Embedding"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "Right-to-Left Override"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "Pop Directional Format"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "Non-Spacing Mark"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "Boundary Neutral"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "First Strong Isolate"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "Left-to-Right Isolate"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "Right-to-Left Isolate"

    return-object v0

    :pswitch_16
    const-string/jumbo v0, "Pop Directional Isolate"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch
.end method
