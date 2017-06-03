.class public Landroid/icu/impl/duration/impl/PeriodFormatterData;
.super Ljava/lang/Object;
.source "PeriodFormatterData.java"


# static fields
.field private static final FORM_DUAL:I = 0x2

.field private static final FORM_HALF_SPELLED:I = 0x6

.field private static final FORM_PAUCAL:I = 0x3

.field private static final FORM_PLURAL:I = 0x0

.field private static final FORM_SINGULAR:I = 0x1

.field private static final FORM_SINGULAR_NO_OMIT:I = 0x5

.field private static final FORM_SINGULAR_SPELLED:I = 0x4

.field public static trace:Z


# instance fields
.field final dr:Landroid/icu/impl/duration/impl/DataRecord;

.field localeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/impl/duration/impl/DataRecord;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iput-object p1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "localename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "data record is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private computeForm(Landroid/icu/impl/duration/TimeUnit;IIZ)I
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-boolean v3, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pfd.cf unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " cv: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " dr.pl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-nez v3, :cond_1

    return v7

    :cond_1
    div-int/lit16 v2, p2, 0x3e8

    packed-switch p3, :pswitch_data_0

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->decimalHandling:B

    packed-switch v3, :pswitch_data_1

    :cond_2
    :pswitch_0
    return v7

    :pswitch_1
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    packed-switch v3, :pswitch_data_2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :pswitch_2
    return v7

    :pswitch_3
    div-int/lit16 v1, p2, 0x1f4

    if-ne v1, v6, :cond_4

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    const/4 v3, 0x6

    return v3

    :cond_3
    return v8

    :cond_4
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v6, :cond_7

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-ne v3, v8, :cond_5

    const/16 v3, 0x15

    if-le v1, v3, :cond_5

    return v8

    :cond_5
    if-ne v1, v9, :cond_7

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-ne v3, v6, :cond_7

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->fractionHandling:B

    if-eq v3, v10, :cond_7

    return v7

    :pswitch_4
    div-int/lit16 v1, p2, 0x1f4

    if-eq v1, v6, :cond_6

    if-ne v1, v9, :cond_7

    :cond_6
    return v9

    :pswitch_5
    return v8

    :pswitch_6
    const/16 v3, 0x3e8

    if-ge p2, v3, :cond_2

    return v8

    :pswitch_7
    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    if-ne v3, v9, :cond_2

    return v9

    :cond_7
    :pswitch_8
    sget-boolean v3, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    if-eqz v3, :cond_8

    if-nez p2, :cond_8

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EZeroHandling = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    if-nez p2, :cond_9

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->zeroHandling:B

    if-ne v3, v6, :cond_9

    const/4 v3, 0x4

    return v3

    :cond_9
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    packed-switch v3, :pswitch_data_3

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dr.pl is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :pswitch_9
    if-ne v2, v6, :cond_a

    const/4 v0, 0x4

    :cond_a
    :goto_0
    :pswitch_a
    return v0

    :pswitch_b
    if-ne v2, v10, :cond_b

    const/4 v0, 0x2

    goto :goto_0

    :cond_b
    if-ne v2, v6, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_c
    move v1, v2

    rem-int/lit8 v1, v2, 0x64

    const/16 v3, 0x14

    if-le v1, v3, :cond_c

    rem-int/lit8 v1, v1, 0xa

    :cond_c
    if-ne v1, v6, :cond_d

    const/4 v0, 0x1

    goto :goto_0

    :cond_d
    if-le v1, v6, :cond_a

    if-ge v1, v8, :cond_a

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_d
    if-ne v2, v10, :cond_e

    const/4 v0, 0x2

    goto :goto_0

    :cond_e
    if-ne v2, v6, :cond_10

    if-eqz p4, :cond_f

    const/4 v0, 0x4

    goto :goto_0

    :cond_f
    const/4 v0, 0x1

    goto :goto_0

    :cond_10
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->YEAR:Landroid/icu/impl/duration/TimeUnit;

    if-ne p1, v3, :cond_a

    const/16 v3, 0xb

    if-le v2, v3, :cond_a

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_e
    if-ne v2, v10, :cond_11

    const/4 v0, 0x2

    goto :goto_0

    :cond_11
    if-ne v2, v6, :cond_12

    const/4 v0, 0x1

    goto :goto_0

    :cond_12
    const/16 v3, 0xa

    if-le v2, v3, :cond_a

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public allowZero()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->allowZero:Z

    return v0
.end method

.method public appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I
    .locals 13

    const/4 v10, 0x2

    move/from16 v0, p5

    if-ne v0, v10, :cond_0

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    if-nez v10, :cond_0

    const/16 p5, 0x0

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->digitPrefix:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    move-result v5

    packed-switch p5, :pswitch_data_0

    const/4 v2, 0x1

    packed-switch p5, :pswitch_data_1

    :goto_0
    if-nez p2, :cond_2

    const/4 v10, 0x1

    move/from16 v0, p4

    move-object/from16 v1, p9

    invoke-virtual {p0, v0, v10, v2, v1}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    if-eqz p6, :cond_3

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-nez p2, :cond_4

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_4

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    aget-object v6, v10, v5

    if-eqz v6, :cond_4

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    move-object/from16 v0, p9

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p8, :cond_1b

    :goto_2
    return v5

    :pswitch_0
    if-nez p2, :cond_2

    move/from16 v0, p4

    div-int/lit16 v10, v0, 0x3e8

    const/4 v11, 0x1

    const/16 v12, 0xa

    move-object/from16 v0, p9

    invoke-virtual {p0, v10, v11, v12, v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    goto :goto_1

    :pswitch_1
    move/from16 v0, p4

    div-int/lit16 v9, v0, 0x3e8

    sget-object v10, Landroid/icu/impl/duration/TimeUnit;->MINUTE:Landroid/icu/impl/duration/TimeUnit;

    if-ne p1, v10, :cond_b

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    if-nez v10, :cond_5

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    if-eqz v10, :cond_b

    :cond_5
    if-eqz v9, :cond_b

    rem-int/lit8 v10, v9, 0x5

    if-nez v10, :cond_b

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    if-eqz v10, :cond_9

    const/16 v10, 0xf

    if-eq v9, v10, :cond_6

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_9

    :cond_6
    const/16 v10, 0xf

    if-ne v9, v10, :cond_8

    const/4 v9, 0x1

    :goto_3
    if-nez p2, :cond_7

    const/4 v10, 0x1

    const/16 v11, 0xa

    move-object/from16 v0, p9

    invoke-virtual {p0, v9, v10, v11, v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    :cond_7
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v10, Landroid/icu/impl/duration/impl/DataRecord;->fifteenMinutes:Ljava/lang/String;

    move-object/from16 p7, v0

    const/16 v5, 0x8

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x3

    goto :goto_3

    :cond_9
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    if-eqz v10, :cond_b

    div-int/lit8 v9, v9, 0x5

    if-nez p2, :cond_a

    const/4 v10, 0x1

    const/16 v11, 0xa

    move-object/from16 v0, p9

    invoke-virtual {p0, v9, v10, v11, v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    :cond_a
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v10, Landroid/icu/impl/duration/impl/DataRecord;->fiveMinutes:Ljava/lang/String;

    move-object/from16 p7, v0

    const/16 v5, 0x9

    goto/16 :goto_1

    :cond_b
    if-nez p2, :cond_2

    const/4 v10, 0x1

    const/16 v11, 0xa

    move-object/from16 v0, p9

    invoke-virtual {p0, v9, v10, v11, v0}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    goto/16 :goto_1

    :pswitch_2
    move/from16 v0, p4

    div-int/lit16 v8, v0, 0x1f4

    const/4 v10, 0x1

    if-eq v8, v10, :cond_c

    if-nez p2, :cond_c

    const/4 v10, 0x1

    const/4 v11, 0x0

    move/from16 v0, p4

    move-object/from16 v1, p9

    invoke-virtual {p0, v0, v10, v11, v1}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCountValue(IIILjava/lang/StringBuffer;)V

    :cond_c
    and-int/lit8 v10, v8, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v10, 0x1

    if-ne v8, v10, :cond_e

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    if-eqz v10, :cond_e

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    aget-object v10, v10, v5

    if-eqz v10, :cond_e

    move-object/from16 v0, p9

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p8, :cond_d

    :goto_4
    return v5

    :cond_d
    const/4 v5, -0x1

    goto :goto_4

    :cond_e
    const/4 v10, 0x1

    if-ne v8, v10, :cond_10

    const/4 v7, 0x0

    :goto_5
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    if-eqz v10, :cond_f

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    array-length v10, v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_f

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->genders:[B

    aget-byte v10, v10, v5

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    add-int/lit8 v7, v7, 0x2

    :cond_f
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    if-nez v10, :cond_11

    const/4 v4, 0x0

    :goto_6
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halves:[Ljava/lang/String;

    aget-object v3, v10, v7

    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    if-nez v10, :cond_12

    const/4 v6, 0x0

    :goto_7
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_10
    const/4 v7, 0x1

    goto :goto_5

    :cond_11
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->halfPlacements:[B

    and-int/lit8 v11, v7, 0x1

    aget-byte v4, v10, v11

    goto :goto_6

    :cond_12
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->measures:[Ljava/lang/String;

    aget-object v6, v10, v5

    goto :goto_7

    :pswitch_4
    if-eqz v6, :cond_15

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p6, :cond_13

    if-eqz p2, :cond_14

    :cond_13
    :goto_8
    move-object/from16 v0, p9

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, -0x1

    return v10

    :cond_14
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_15
    move-object/from16 v0, p9

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p8, :cond_16

    :goto_9
    return v5

    :cond_16
    const/4 v5, -0x1

    goto :goto_9

    :pswitch_5
    if-eqz v6, :cond_17

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    if-eqz p6, :cond_18

    if-eqz p2, :cond_19

    :cond_18
    :goto_a
    move-object/from16 v0, p9

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p8, :cond_1a

    :goto_b
    return v5

    :cond_19
    iget-object v10, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v10, v10, Landroid/icu/impl/duration/impl/DataRecord;->countSep:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_1a
    const/4 v5, -0x1

    goto :goto_b

    :pswitch_6
    const/4 v2, 0x2

    goto/16 :goto_0

    :pswitch_7
    const/4 v2, 0x3

    goto/16 :goto_0

    :cond_1b
    const/4 v5, -0x1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public appendCountValue(IIILjava/lang/StringBuffer;)V
    .locals 9

    const/16 v8, 0x20

    const/16 v5, 0xa

    div-int/lit16 v7, p1, 0x3e8

    if-nez p3, :cond_0

    invoke-virtual {p0, v7, p2, v5, p4}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendInteger(IIILjava/lang/StringBuffer;)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    int-to-long v2, v7

    move-object v1, p0

    move v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    rem-int/lit16 v0, p1, 0x3e8

    const/4 v1, 0x1

    if-ne p3, v1, :cond_4

    div-int/lit8 v0, v0, 0x64

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-char v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->decimalSep:C

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-long v2, v0

    move-object v1, p0

    move v4, p3

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    if-eqz v1, :cond_3

    invoke-virtual {p4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    div-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public appendDigits(JIILjava/lang/StringBuffer;)V
    .locals 13

    const-wide/16 v10, 0xa

    move/from16 v0, p4

    new-array v2, v0, [C

    move/from16 v4, p4

    :goto_0
    if-lez v4, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-char v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    int-to-long v6, v5

    rem-long v8, p1, v10

    add-long/2addr v6, v8

    long-to-int v5, v6

    int-to-char v5, v5

    aput-char v5, v2, v4

    div-long/2addr p1, v10

    goto :goto_0

    :cond_0
    sub-int v3, p4, p3

    :goto_1
    if-le v4, v3, :cond_1

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-char v5, v5, Landroid/icu/impl/duration/impl/DataRecord;->zero:C

    aput-char v5, v2, v4

    goto :goto_1

    :cond_1
    sub-int v5, p4, v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendInteger(IIILjava/lang/StringBuffer;)V
    .locals 8

    const/16 v7, 0x20

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->numberNames:[Ljava/lang/String;

    aget-object v0, v1, p1

    if-eqz v0, :cond_0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->numberSystem:B

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->requiresDigitSeparator:Z

    if-eqz v1, :cond_2

    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    return-void

    :pswitch_0
    int-to-long v2, p1

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendDigits(JIILjava/lang/StringBuffer;)V

    goto :goto_0

    :pswitch_1
    int-to-long v2, p1

    sget-object v1, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    invoke-static {v2, v3, v1}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    int-to-long v2, p1

    sget-object v1, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    invoke-static {v2, v3, v1}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    int-to-long v2, p1

    sget-object v1, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    invoke-static {v2, v3, v1}, Landroid/icu/impl/duration/impl/Utils;->chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public appendPrefix(IILjava/lang/StringBuffer;)Z
    .locals 4

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    if-eqz v3, :cond_0

    mul-int/lit8 v3, p1, 0x3

    add-int v0, v3, p2

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    aget-object v2, v3, v0

    if-eqz v2, :cond_0

    iget-object v1, v2, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v3, v2, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public appendSkippedUnit(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public appendSuffix(IILjava/lang/StringBuffer;)V
    .locals 6

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    if-eqz v3, :cond_1

    mul-int/lit8 v3, p1, 0x3

    add-int v0, v3, p2

    iget-object v3, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v3, v3, Landroid/icu/impl/duration/impl/DataRecord;->scopeData:[Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    aget-object v1, v3, v0

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-boolean v3, Landroid/icu/impl/duration/impl/PeriodFormatterData;->trace:Z

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appendSuffix \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method

.method public appendUnit(Landroid/icu/impl/duration/TimeUnit;IIIZZZZZLjava/lang/StringBuffer;)Z
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/duration/TimeUnit;->ordinal()I

    move-result v17

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->requiresSkipMarker:[Z

    aget-boolean v4, v4, v17

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    if-eqz v4, :cond_1

    if-nez p9, :cond_0

    if-eqz p8, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->skippedUnitMarker:Ljava/lang/String;

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v21, 0x1

    :cond_1
    if-eqz p4, :cond_7

    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_4

    const/16 v20, 0x1

    :goto_0
    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v4, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_1
    if-eqz v16, :cond_2

    aget-object v4, v16, v17

    if-nez v4, :cond_3

    :cond_2
    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v4, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_3
    :goto_2
    if-eqz v16, :cond_7

    aget-object v4, v16, v17

    if-eqz v4, :cond_7

    aget-object v11, v16, v17

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v12, p8

    move-object/from16 v13, p10

    invoke-virtual/range {v4 .. v13}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I

    const/4 v4, 0x0

    return v4

    :cond_4
    const/16 v20, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v4, Landroid/icu/impl/duration/impl/DataRecord;->shortNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v0, v4, Landroid/icu/impl/duration/impl/DataRecord;->mediumNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_2

    :cond_7
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->halfSupport:[B

    aget-byte v4, v4, v17

    packed-switch v4, :pswitch_data_0

    :cond_8
    :goto_3
    :pswitch_0
    const/4 v11, 0x0

    if-eqz p7, :cond_e

    move/from16 v4, p8

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->computeForm(Landroid/icu/impl/duration/TimeUnit;IIZ)I

    move-result v15

    const/4 v4, 0x4

    if-ne v15, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    if-nez v4, :cond_f

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v4, v4, v17

    aget-object v11, v4, v15

    :goto_5
    if-nez v11, :cond_9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v4, v4, v17

    aget-object v11, v4, v15

    :cond_9
    const/4 v4, 0x4

    if-eq v15, v4, :cond_a

    const/4 v4, 0x6

    if-ne v15, v4, :cond_13

    :cond_a
    const/4 v6, 0x1

    :goto_6
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p6

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p5

    move/from16 v12, p8

    move-object/from16 v13, p10

    invoke-virtual/range {v4 .. v13}, Landroid/icu/impl/duration/impl/PeriodFormatterData;->appendCount(Landroid/icu/impl/duration/TimeUnit;ZZIIZLjava/lang/String;ZLjava/lang/StringBuffer;)I

    move-result v19

    if-eqz p8, :cond_d

    if-ltz v19, :cond_d

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->rqdSuffixes:[Ljava/lang/String;

    aget-object v18, v4, v19

    :cond_b
    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->optSuffixes:[Ljava/lang/String;

    aget-object v18, v4, v19

    :cond_c
    if-eqz v18, :cond_d

    move-object/from16 v0, p10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    return v21

    :pswitch_1
    const/16 v4, 0x3e8

    move/from16 v0, p2

    if-gt v0, v4, :cond_8

    :pswitch_2
    move/from16 v0, p2

    div-int/lit16 v4, v0, 0x1f4

    mul-int/lit16 v0, v4, 0x1f4

    move/from16 p2, v0

    const/16 p3, 0x3

    goto/16 :goto_3

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->singularNames:[Ljava/lang/String;

    aget-object v11, v4, v17

    goto/16 :goto_5

    :cond_10
    const/4 v4, 0x5

    if-ne v15, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v4, v4, v17

    const/4 v5, 0x1

    aget-object v11, v4, v5

    goto/16 :goto_5

    :cond_11
    const/4 v4, 0x6

    if-ne v15, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->halfNames:[Ljava/lang/String;

    aget-object v11, v4, v17

    goto/16 :goto_5

    :cond_12
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    aget-object v4, v4, v17

    aget-object v11, v4, v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v14

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Null Pointer in PeriodFormatterData["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->localeName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "].au px: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " form: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " pn: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v7, v7, Landroid/icu/impl/duration/impl/DataRecord;->pluralNames:[[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v14

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->omitSingularCount:Z

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    if-eq v15, v4, :cond_a

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v4, v4, Landroid/icu/impl/duration/impl/DataRecord;->omitDualCount:Z

    if-eqz v4, :cond_15

    const/4 v4, 0x2

    if-ne v15, v4, :cond_15

    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public appendUnitSeparator(Landroid/icu/impl/duration/TimeUnit;ZZZLjava/lang/StringBuffer;)Z
    .locals 4

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p2, :cond_5

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz p3, :cond_3

    const/4 v1, 0x2

    move v3, v1

    :goto_0
    if-eqz p4, :cond_4

    const/4 v1, 0x1

    :goto_1
    add-int v0, v3, v1

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSep:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->unitSepRequiresDP:[Z

    aget-boolean v2, v1, v0

    :cond_1
    return v2

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_2
    return v2

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v1, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-object v1, v1, Landroid/icu/impl/duration/impl/DataRecord;->shortUnitSep:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public pluralization()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->pl:B

    return v0
.end method

.method public useMilliseconds()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-byte v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->useMilliseconds:B

    return v0
.end method

.method public weeksAloneOnly()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/duration/impl/PeriodFormatterData;->dr:Landroid/icu/impl/duration/impl/DataRecord;

    iget-boolean v0, v0, Landroid/icu/impl/duration/impl/DataRecord;->weeksAloneOnly:Z

    return v0
.end method
