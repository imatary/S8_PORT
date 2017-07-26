.class Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# static fields
.field protected static final alphabiasshift:I = 0xa

.field protected static final alpharadbias:I = 0x40000

.field protected static final alpharadbshift:I = 0x12

.field protected static final beta:I = 0x40

.field protected static final betagamma:I = 0x10000

.field protected static final betashift:I = 0xa

.field protected static final gamma:I = 0x400

.field protected static final gammashift:I = 0xa

.field protected static final initalpha:I = 0x400

.field protected static final initrad:I = 0x20

.field protected static final initradius:I = 0x800

.field protected static final intbias:I = 0x10000

.field protected static final intbiasshift:I = 0x10

.field protected static final maxnetpos:I = 0xff

.field protected static final minpicturebytes:I = 0x5e5

.field protected static final ncycles:I = 0x64

.field protected static final netbiasshift:I = 0x4

.field protected static final netsize:I = 0x100

.field protected static final prime1:I = 0x1f3

.field protected static final prime2:I = 0x1eb

.field protected static final prime3:I = 0x1e7

.field protected static final prime4:I = 0x1f7

.field protected static final radbias:I = 0x100

.field protected static final radbiasshift:I = 0x8

.field protected static final radiusbias:I = 0x40

.field protected static final radiusbiasshift:I = 0x6

.field protected static final radiusdec:I = 0x1e


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v2, v5, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    new-array v2, v5, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    new-array v2, v5, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    iput p2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    iput p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    new-array v2, v5, [[I

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v2, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    shl-int/lit8 v4, v0, 0xc

    div-int/lit16 v4, v4, 0x100

    aput v4, v1, v3

    aput v4, v1, v2

    aput v4, v1, v6

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aput v5, v2, v0

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aput v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .locals 14

    sub-int v6, p2, p1

    const/4 v10, -0x1

    if-ge v6, v10, :cond_0

    const/4 v6, -0x1

    :cond_0
    add-int v1, p2, p1

    const/16 v10, 0x100

    if-le v1, v10, :cond_1

    const/16 v1, 0x100

    :cond_1
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v4, p2, -0x1

    const/4 v7, 0x1

    move v8, v7

    move v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    if-le v5, v6, :cond_3

    :cond_2
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    add-int/lit8 v7, v8, 0x1

    aget v0, v10, v8

    if-ge v3, v1, :cond_5

    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v2, v3, 0x1

    aget-object v9, v10, v3

    const/4 v10, 0x0

    :try_start_0
    aget v11, v9, v10

    const/4 v12, 0x0

    aget v12, v9, v12

    sub-int v12, v12, p3

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x1

    aget v11, v9, v10

    const/4 v12, 0x1

    aget v12, v9, v12

    sub-int v12, v12, p4

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x2

    aget v12, v9, v12

    sub-int v12, v12, p5

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-le v5, v6, :cond_4

    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v4, v5, -0x1

    aget-object v9, v10, v5

    const/4 v10, 0x0

    :try_start_1
    aget v11, v9, v10

    const/4 v12, 0x0

    aget v12, v9, v12

    sub-int v12, v12, p3

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x1

    aget v11, v9, v10

    const/4 v12, 0x1

    aget v12, v9, v12

    sub-int v12, v12, p4

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x2

    aget v12, v9, v12

    sub-int v12, v12, p5

    mul-int/2addr v12, v0

    const/high16 v13, 0x40000

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    aput v11, v9, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v7

    move v5, v4

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v10

    move v8, v7

    move v5, v4

    move v3, v2

    goto :goto_0

    :cond_3
    return-void

    :catch_1
    move-exception v10

    goto :goto_1

    :cond_4
    move v8, v7

    move v3, v2

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method protected altersingle(IIIII)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v0, v1, p2

    aget v1, v0, v3

    aget v2, v0, v3

    sub-int/2addr v2, p3

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v3

    aget v1, v0, v4

    aget v2, v0, v4

    sub-int/2addr v2, p4

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v4

    aget v1, v0, v5

    aget v2, v0, v5

    sub-int/2addr v2, p5

    mul-int/2addr v2, p1

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v1, v2

    aput v1, v0, v5

    return-void
.end method

.method public colorMap()[B
    .locals 9

    const/16 v8, 0x100

    const/16 v6, 0x300

    new-array v5, v6, [B

    new-array v1, v8, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    aput v0, v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    move v4, v3

    :goto_1
    if-ge v0, v8, :cond_1

    aget v2, v1, v0

    add-int/lit8 v3, v4, 0x1

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v3, 0x1

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    add-int/lit8 v3, v4, 0x1

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v2

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    return-object v5
.end method

.method protected contest(III)I
    .locals 13

    const v3, 0x7fffffff

    move v1, v3

    const/4 v4, -0x1

    move v2, v4

    const/4 v8, 0x0

    :goto_0
    const/16 v10, 0x100

    if-ge v8, v10, :cond_5

    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v9, v10, v8

    const/4 v10, 0x0

    aget v10, v9, v10

    sub-int v7, v10, p1

    if-gez v7, :cond_0

    neg-int v7, v7

    :cond_0
    const/4 v10, 0x1

    aget v10, v9, v10

    sub-int v0, v10, p2

    if-gez v0, :cond_1

    neg-int v0, v0

    :cond_1
    add-int/2addr v7, v0

    const/4 v10, 0x2

    aget v10, v9, v10

    sub-int v0, v10, p3

    if-gez v0, :cond_2

    neg-int v0, v0

    :cond_2
    add-int/2addr v7, v0

    if-ge v7, v3, :cond_3

    move v3, v7

    move v4, v8

    :cond_3
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v10, v10, v8

    shr-int/lit8 v10, v10, 0xc

    sub-int v6, v7, v10

    if-ge v6, v1, :cond_4

    move v1, v6

    move v2, v8

    :cond_4
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v10, v10, v8

    shr-int/lit8 v5, v10, 0xa

    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v11, v10, v8

    sub-int/2addr v11, v5

    aput v11, v10, v8

    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v11, v10, v8

    shl-int/lit8 v12, v5, 0xa

    add-int/2addr v11, v12

    aput v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v11, v10, v4

    add-int/lit8 v11, v11, 0x40

    aput v11, v10, v4

    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v11, v10, v4

    const/high16 v12, 0x10000

    sub-int/2addr v11, v12

    aput v11, v10, v4

    return v2
.end method

.method public inxbuild()V
    .locals 15

    const/16 v14, 0x100

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v14, :cond_5

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v8, v0

    move v5, v0

    aget v6, v2, v10

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v14, :cond_1

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v8, v1

    aget v8, v4, v10

    if-ge v8, v6, :cond_0

    move v5, v1

    aget v6, v4, v10

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v8, v5

    if-eq v0, v5, :cond_2

    aget v1, v4, v11

    aget v8, v2, v11

    aput v8, v4, v11

    aput v1, v2, v11

    aget v1, v4, v10

    aget v8, v2, v10

    aput v8, v4, v10

    aput v1, v2, v10

    aget v1, v4, v12

    aget v8, v2, v12

    aput v8, v4, v12

    aput v1, v2, v12

    aget v1, v4, v13

    aget v8, v2, v13

    aput v8, v4, v13

    aput v1, v2, v13

    :cond_2
    if-eq v6, v3, :cond_4

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int v9, v7, v0

    shr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    add-int/lit8 v1, v3, 0x1

    :goto_2
    if-ge v1, v6, :cond_3

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v0, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v3, v6

    move v7, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int/lit16 v9, v7, 0xff

    shr-int/lit8 v9, v9, 0x1

    aput v9, v8, v3

    add-int/lit8 v1, v3, 0x1

    :goto_3
    if-ge v1, v14, :cond_6

    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    const/16 v9, 0xff

    aput v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public learn()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v7, 0x5e5

    if-ge v1, v7, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    mul-int/lit8 v7, v7, 0x3

    div-int v19, v1, v7

    div-int/lit8 v13, v19, 0x64

    const/16 v2, 0x400

    const/16 v18, 0x800

    shr-int/lit8 v8, v18, 0x6

    const/4 v1, 0x1

    if-gt v8, v1, :cond_1

    const/4 v8, 0x0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    if-ge v14, v8, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v7, v8, v8

    mul-int v9, v14, v14

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x100

    mul-int v9, v8, v8

    div-int/2addr v7, v9

    mul-int/2addr v7, v2

    aput v7, v1, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v7, 0x5e5

    if-ge v1, v7, :cond_8

    const/16 v20, 0x3

    :goto_1
    const/4 v14, 0x0

    :cond_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_c

    add-int/lit8 v1, v17, 0x0

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x4

    add-int/lit8 v1, v17, 0x1

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v5, v1, 0x4

    add-int/lit8 v1, v17, 0x2

    aget-byte v1, v16, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v6, v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/bumptech/glide/gifencoder/NeuQuant;->contest(III)I

    move-result v3

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/gifencoder/NeuQuant;->altersingle(IIIII)V

    if-eqz v8, :cond_4

    move-object/from16 v7, p0

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/bumptech/glide/gifencoder/NeuQuant;->alterneigh(IIIII)V

    :cond_4
    add-int v17, v17, v20

    move/from16 v0, v17

    if-lt v0, v15, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    sub-int v17, v17, v1

    :cond_5
    add-int/lit8 v14, v14, 0x1

    if-nez v13, :cond_6

    const/4 v13, 0x1

    :cond_6
    rem-int v1, v14, v13

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    div-int v1, v2, v1

    sub-int/2addr v2, v1

    div-int/lit8 v1, v18, 0x1e

    sub-int v18, v18, v1

    shr-int/lit8 v8, v18, 0x6

    const/4 v1, 0x1

    if-gt v8, v1, :cond_7

    const/4 v8, 0x0

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v7, v8, v8

    mul-int v9, v3, v3

    sub-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x100

    mul-int v9, v8, v8

    div-int/2addr v7, v9

    mul-int/2addr v7, v2

    aput v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1f3

    if-eqz v1, :cond_9

    const/16 v20, 0x5d9

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1eb

    if-eqz v1, :cond_a

    const/16 v20, 0x5c1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v1, v1, 0x1e7

    if-eqz v1, :cond_b

    const/16 v20, 0x5b5

    goto/16 :goto_1

    :cond_b
    const/16 v20, 0x5e5

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method public map(III)I
    .locals 8

    const/16 v2, 0x3e8

    const/4 v1, -0x1

    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aget v4, v7, p2

    add-int/lit8 v5, v4, -0x1

    :cond_0
    :goto_0
    const/16 v7, 0x100

    if-lt v4, v7, :cond_1

    if-ltz v5, :cond_b

    :cond_1
    const/16 v7, 0x100

    if-ge v4, v7, :cond_2

    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v7, v4

    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int v3, v7, p2

    if-lt v3, v2, :cond_3

    const/16 v4, 0x100

    :cond_2
    :goto_1
    if-ltz v5, :cond_0

    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v7, v5

    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int v3, p2, v7

    if-lt v3, v2, :cond_7

    const/4 v5, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    if-gez v3, :cond_4

    neg-int v3, v3

    :cond_4
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-int v0, v7, p1

    if-gez v0, :cond_5

    neg-int v0, v0

    :cond_5
    add-int/2addr v3, v0

    if-ge v3, v2, :cond_2

    const/4 v7, 0x2

    aget v7, v6, v7

    sub-int v0, v7, p3

    if-gez v0, :cond_6

    neg-int v0, v0

    :cond_6
    add-int/2addr v3, v0

    if-ge v3, v2, :cond_2

    move v2, v3

    const/4 v7, 0x3

    aget v1, v6, v7

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, -0x1

    if-gez v3, :cond_8

    neg-int v3, v3

    :cond_8
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-int v0, v7, p1

    if-gez v0, :cond_9

    neg-int v0, v0

    :cond_9
    add-int/2addr v3, v0

    if-ge v3, v2, :cond_0

    const/4 v7, 0x2

    aget v7, v6, v7

    sub-int v0, v7, p3

    if-gez v0, :cond_a

    neg-int v0, v0

    :cond_a
    add-int/2addr v3, v0

    if-ge v3, v2, :cond_0

    move v2, v3

    const/4 v7, 0x3

    aget v1, v6, v7

    goto :goto_0

    :cond_b
    return v1
.end method

.method public process()[B
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->learn()V

    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->unbiasnet()V

    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->inxbuild()V

    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->colorMap()[B

    move-result-object v0

    return-object v0
.end method

.method public unbiasnet()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x2

    aget v3, v1, v2

    shr-int/lit8 v3, v3, 0x4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aput v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
