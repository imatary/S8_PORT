.class public Lcom/caverock/androidsvg/NumberParser;
.super Ljava/lang/Object;
.source "NumberParser.java"


# static fields
.field static TOO_BIG:J

.field private static final negativePowersOf10:[F

.field private static final positivePowersOf10:[F


# instance fields
.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x27

    const-wide v0, 0xcccccccccccccccL

    sput-wide v0, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
        0x51ba43b7    # 9.9999998E10f
        0x5368d4a5    # 1.0E12f
        0x551184e7    # 9.9999998E12f
        0x56b5e621    # 1.0E14f
        0x58635fa9    # 9.9999999E14f
        0x5a0e1bca    # 1.00000003E16f
        0x5bb1a2bc    # 9.9999998E16f
        0x5d5e0b6b    # 9.9999998E17f
        0x5f0ac723    # 1.0E19f
        0x60ad78ec    # 1.0E20f
        0x6258d727    # 1.0E21f
        0x64078678    # 1.0E22f
        0x65a96816    # 1.0E23f
        0x6753c21c    # 1.0E24f
        0x69045951    # 1.0E25f
        0x6aa56fa6    # 1.0E26f
        0x6c4ecb8f    # 1.0E27f
        0x6e013f39    # 1.0E28f
        0x6fa18f08    # 1.0E29f
        0x7149f2ca    # 1.0E30f
        0x72fc6f7c    # 1.0E31f
        0x749dc5ae    # 1.0E32f
        0x76453719    # 1.0E33f
        0x77f684df    # 1.0E34f
        0x799a130c    # 1.0E35f
        0x7b4097ce    # 1.0E36f
        0x7cf0bdc2    # 1.0E37f
        0x7e967699    # 1.0E38f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3c23d70a    # 0.01f
        0x3a83126f    # 0.001f
        0x38d1b717    # 1.0E-4f
        0x3727c5ac    # 1.0E-5f
        0x358637bd    # 1.0E-6f
        0x33d6bf95    # 1.0E-7f
        0x322bcc77    # 1.0E-8f
        0x3089705f    # 1.0E-9f
        0x2edbe6ff    # 1.0E-10f
        0x2d2febff    # 1.0E-11f
        0x2b8cbccc    # 1.0E-12f
        0x29e12e13    # 1.0E-13f
        0x283424dc    # 1.0E-14f
        0x26901d7d    # 1.0E-15f
        0x24e69595    # 1.0E-16f
        0x233877aa    # 1.0E-17f
        0x219392ef    # 1.0E-18f
        0x1fec1e4a    # 1.0E-19f
        0x1e3ce508    # 1.0E-20f
        0x1c971da0    # 1.0E-21f
        0x1af1c901    # 1.0E-22f
        0x19416d9a    # 1.0E-23f
        0x179abe15    # 1.0E-24f
        0x15f79688    # 1.0E-25f
        0x14461206    # 1.0E-26f
        0x129e74d2    # 1.0E-27f
        0x10fd87b6    # 1.0E-28f
        0xf4ad2f8    # 1.0E-29f
        0xda24260    # 1.0E-30f
        0xc01ceb3    # 1.0E-31f
        0xa4fb11f    # 1.0E-32f
        0x8a6274c    # 1.0E-33f
        0x704ec3d    # 1.0E-34f
        0x554ad2e    # 1.0E-35f
        0x3aa2425    # 1.0E-36f
        0x2081cea    # 1.0E-37f
        0x6ce3ee    # 1.0E-38f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    return v0
.end method

.method public parseNumber(Ljava/lang/String;)F
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    return v0
.end method

.method public parseNumber(Ljava/lang/String;II)F
    .locals 22

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    const/high16 v10, 0x7fc00000    # NaNf

    :cond_0
    :goto_0
    return v10

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v18, 0x30

    move/from16 v0, v18

    if-ne v3, v0, :cond_4

    if-nez v12, :cond_3

    add-int/lit8 v13, v13, 0x1

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_2

    :pswitch_1
    const/4 v11, 0x1

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_1

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    const/16 v18, 0x31

    move/from16 v0, v18

    if-lt v3, v0, :cond_8

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v3, v0, :cond_8

    add-int/2addr v12, v14

    :goto_4
    if-lez v14, :cond_6

    sget-wide v18, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v18, v16, v18

    if-lez v18, :cond_5

    const/high16 v10, 0x7fc00000    # NaNf

    goto :goto_0

    :cond_5
    const-wide/16 v18, 0xa

    mul-long v16, v16, v18

    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    :cond_6
    sget-wide v18, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v18, v16, v18

    if-lez v18, :cond_7

    const/high16 v10, 0x7fc00000    # NaNf

    goto/16 :goto_0

    :cond_7
    const-wide/16 v18, 0xa

    mul-long v18, v18, v16

    add-int/lit8 v20, v3, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v16, v18, v20

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-gez v18, :cond_2

    const/high16 v10, 0x7fc00000    # NaNf

    goto/16 :goto_0

    :cond_8
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v3, v0, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/high16 v10, 0x7fc00000    # NaNf

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    sub-int v4, v18, v15

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_b
    if-nez v12, :cond_d

    if-nez v13, :cond_c

    const/high16 v10, 0x7fc00000    # NaNf

    goto/16 :goto_0

    :cond_c
    const/4 v12, 0x1

    :cond_d
    if-eqz v5, :cond_f

    sub-int v18, v4, v13

    sub-int v9, v18, v12

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v18, 0x45

    move/from16 v0, v18

    if-eq v3, v0, :cond_e

    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v3, v0, :cond_14

    :cond_e
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_10

    const/high16 v10, 0x7fc00000    # NaNf

    goto/16 :goto_0

    :cond_f
    move v9, v14

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    packed-switch v18, :pswitch_data_1

    :pswitch_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    :goto_6
    :pswitch_4
    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v3, v0, :cond_12

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v3, v0, :cond_12

    int-to-long v0, v8

    move-wide/from16 v18, v0

    sget-wide v20, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v18, v18, v20

    if-lez v18, :cond_11

    const/high16 v10, 0x7fc00000    # NaNf

    goto/16 :goto_0

    :pswitch_5
    const/4 v6, 0x1

    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_6

    :cond_11
    mul-int/lit8 v18, v8, 0xa

    add-int/lit8 v19, v3, -0x30

    add-int v8, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_13

    const/high16 v10, 0x7fc00000    # NaNf

    goto/16 :goto_0

    :cond_13
    if-eqz v6, :cond_16

    sub-int/2addr v9, v8

    :cond_14
    :goto_8
    add-int v18, v9, v12

    const/16 v19, 0x27

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_15

    add-int v18, v9, v12

    const/16 v19, -0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_17

    :cond_15
    const/high16 v10, 0x7fc00000    # NaNf

    goto/16 :goto_0

    :cond_16
    add-int/2addr v9, v8

    goto :goto_8

    :cond_17
    move-wide/from16 v0, v16

    long-to-float v10, v0

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_18

    if-lez v9, :cond_19

    sget-object v18, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    aget v18, v18, v9

    mul-float v10, v10, v18

    :cond_18
    :goto_9
    if-eqz v11, :cond_0

    neg-float v10, v10

    goto/16 :goto_0

    :cond_19
    if-gez v9, :cond_18

    const/16 v18, -0x26

    move/from16 v0, v18

    if-ge v9, v0, :cond_1a

    float-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide v20, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v10, v0

    add-int/lit8 v9, v9, 0x14

    :cond_1a
    sget-object v18, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    neg-int v0, v9

    move/from16 v19, v0

    aget v18, v18, v19

    mul-float v10, v10, v18

    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
