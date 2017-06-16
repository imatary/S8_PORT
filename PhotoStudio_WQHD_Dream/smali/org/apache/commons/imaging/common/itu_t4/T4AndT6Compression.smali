.class public final Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;
.super Ljava/lang/Object;
.source "T4AndT6Compression.java"


# static fields
.field public static final BLACK:I = 0x1

.field private static final BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree",
            "<",
            "Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHITE:I

.field private static final WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v5, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-direct {v5}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;-><init>()V

    sput-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    new-instance v5, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-direct {v5}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;-><init>()V

    sput-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    new-instance v5, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-direct {v5}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;-><init>()V

    sput-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    :try_start_0
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v7, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v7, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v7, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v7, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->ADDITIONAL_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_4

    aget-object v2, v0, v3

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v7, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    iget-object v6, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    iget-object v7, v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL13:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL13:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL14:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL14:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL15:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL15:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL17:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL17:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL18:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL18:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL19:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL19:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v6, v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    sget-object v7, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->insert(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changingElementAt([II)I
    .locals 1

    if-ltz p1, :cond_0

    array-length v0, p0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    aget v0, p0, p1

    goto :goto_0
.end method

.method private static compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_2

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v5}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v2

    if-eqz p2, :cond_0

    aput v2, p2, v4

    :cond_0
    if-ne v0, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v3, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v5, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v6, "Error reading image to compress"

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_2
    invoke-static {p1, v3, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    return-void
.end method

.method public static compressModifiedHuffman([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V

    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static compressT4_1D([BIIZ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v5, 0x4

    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    if-eqz p3, :cond_1

    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v4, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V

    if-eqz p3, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->getBitsAvailableInCurrentByte()I

    move-result v0

    if-ge v0, v5, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    const/16 v0, 0x8

    :cond_0
    :goto_2
    if-le v0, v5, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1
    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v4, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v4, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static compressT4_2D([BIIZI)[B
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    new-instance v17, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    new-instance v20, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move/from16 v0, p1

    new-array v14, v0, [I

    const/16 v19, 0x0

    if-eqz p3, :cond_0

    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    :goto_0
    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_10

    if-lez v19, :cond_d

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    const/16 v25, 0x1

    :try_start_0
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v25

    aput v25, v14, v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_0
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    goto :goto_0

    :catch_0
    move-exception v18

    new-instance v25, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v26, "Error reading image to compress"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    :cond_1
    const/4 v13, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-static {v14, v13, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v6

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    const/16 v25, 0x1

    add-int/lit8 v26, v10, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    const/4 v4, 0x0

    :goto_3
    move/from16 v0, p1

    if-ge v4, v0, :cond_b

    if-ge v11, v6, :cond_2

    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    move v4, v11

    :goto_4
    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v21

    add-int/lit8 v25, v4, 0x1

    move/from16 v0, v25

    invoke-static {v14, v13, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v6

    move/from16 v0, v21

    if-ne v13, v0, :cond_a

    add-int/lit8 v25, v4, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    :goto_5
    rsub-int/lit8 v25, v13, 0x1

    add-int/lit8 v26, v10, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v11

    goto :goto_3

    :cond_2
    sub-int v8, v6, v10

    const/16 v25, -0x3

    move/from16 v0, v25

    if-gt v0, v8, :cond_9

    const/16 v25, 0x3

    move/from16 v0, v25

    if-gt v8, v0, :cond_9

    const/16 v25, -0x3

    move/from16 v0, v25

    if-ne v8, v0, :cond_3

    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    rsub-int/lit8 v13, v13, 0x1

    move v4, v6

    goto :goto_4

    :cond_3
    const/16 v25, -0x2

    move/from16 v0, v25

    if-ne v8, v0, :cond_4

    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_4
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v8, v0, :cond_5

    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_5
    if-nez v8, :cond_6

    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_6
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v8, v0, :cond_7

    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_7
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v8, v0, :cond_8

    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_8
    sget-object v15, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_9
    rsub-int/lit8 v25, v13, 0x1

    add-int/lit8 v26, v6, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v14, v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    sub-int v5, v6, v4

    sub-int v7, v9, v6

    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    move-object/from16 v0, v20

    invoke-static {v0, v5, v13}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    rsub-int/lit8 v25, v13, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    move v4, v9

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v25, v4, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    rsub-int/lit8 v25, v21, 0x1

    add-int/lit8 v26, v10, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    goto/16 :goto_5

    :cond_b
    move-object/from16 v23, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    :goto_7
    if-eqz p3, :cond_e

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->getBitsAvailableInCurrentByte()I

    move-result v12

    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v12, v0, :cond_c

    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    const/16 v12, 0x8

    :cond_c
    :goto_8
    const/16 v25, 0x4

    move/from16 v0, v25

    if-le v12, v0, :cond_e

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_8

    :cond_d
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->compress1DLine(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[II)V

    goto :goto_7

    :cond_e
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p4

    if-ne v0, v1, :cond_f

    const/16 v19, 0x0

    :cond_f
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {v20 .. v20}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object v25

    return-object v25
.end method

.method public static compressT6([BII)[B
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/16 v16, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v17, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v19, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move/from16 v0, p1

    new-array v13, v0, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v15, v0, :cond_0

    const/16 v25, 0x1

    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v25

    aput v25, v13, v15
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :catch_0
    move-exception v18

    :try_start_3
    new-instance v25, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v26, "Error reading image to compress"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v25

    move-object/from16 v16, v17

    :goto_2
    const/16 v26, 0x1

    :try_start_4
    move/from16 v0, v26

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v16, v26, v27

    move-object/from16 v0, v26

    invoke-static {v11, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    throw v25

    :cond_0
    const/4 v12, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    :try_start_5
    move/from16 v0, v25

    invoke-static {v13, v12, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v5

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    const/16 v25, 0x1

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    const/4 v3, 0x0

    :goto_3
    move/from16 v0, p1

    if-ge v3, v0, :cond_a

    if-ge v10, v5, :cond_1

    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    move v3, v10

    :goto_4
    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v20

    add-int/lit8 v25, v3, 0x1

    move/from16 v0, v25

    invoke-static {v13, v12, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v5

    move/from16 v0, v20

    if-ne v12, v0, :cond_9

    add-int/lit8 v25, v3, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    :goto_5
    rsub-int/lit8 v25, v12, 0x1

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    goto :goto_3

    :cond_1
    sub-int v7, v5, v9

    const/16 v25, -0x3

    move/from16 v0, v25

    if-gt v0, v7, :cond_8

    const/16 v25, 0x3

    move/from16 v0, v25

    if-gt v7, v0, :cond_8

    const/16 v25, -0x3

    move/from16 v0, v25

    if-ne v7, v0, :cond_2

    sget-object v14, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    rsub-int/lit8 v12, v12, 0x1

    move v3, v5

    goto :goto_4

    :cond_2
    const/16 v25, -0x2

    move/from16 v0, v25

    if-ne v7, v0, :cond_3

    sget-object v14, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_3
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_4

    sget-object v14, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_4
    if-nez v7, :cond_5

    sget-object v14, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_5
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_6

    sget-object v14, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_6
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v7, v0, :cond_7

    sget-object v14, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_7
    sget-object v14, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_6

    :cond_8
    rsub-int/lit8 v25, v12, 0x1

    add-int/lit8 v26, v5, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v13, v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v8

    sub-int v4, v5, v3

    sub-int v6, v8, v5

    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    move-object/from16 v0, v19

    invoke-static {v0, v4, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    rsub-int/lit8 v25, v12, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-static {v0, v6, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V

    move v3, v8

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v25, v3, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    rsub-int/lit8 v25, v20, 0x1

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    goto/16 :goto_5

    :cond_a
    move-object/from16 v23, v21

    move-object/from16 v21, v13

    move-object/from16 v13, v23

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    :cond_b
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v22

    const/4 v11, 0x1

    const/16 v25, 0x1

    :try_start_6
    move/from16 v0, v25

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v17, v25, v26

    move-object/from16 v0, v25

    invoke-static {v11, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v22

    :catch_1
    move-exception v18

    new-instance v25, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v26, "I/O error"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    :catch_2
    move-exception v18

    new-instance v25, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v26, "I/O error"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    :catchall_1
    move-exception v25

    goto/16 :goto_2
.end method

.method public static decompressModifiedHuffman([BII)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    new-instance v4, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v12}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v7, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v7}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_4

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v9, v0, :cond_1

    :try_start_1
    invoke-static {v4, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v10

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_0

    invoke-virtual {v7, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    rsub-int/lit8 v2, v2, 0x1

    add-int/2addr v9, v10

    goto :goto_1

    :cond_1
    move/from16 v0, p1

    if-ne v9, v0, :cond_3

    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->flushCache()V

    invoke-virtual {v7}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    move/from16 v0, p1

    if-le v9, v0, :cond_2

    new-instance v12, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unrecoverable row length error in image row "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v12

    move-object v6, v7

    :goto_3
    const/4 v13, 0x1

    :try_start_2
    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v1, v13}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    throw v12

    :cond_4
    :try_start_3
    invoke-virtual {v7}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    const/4 v1, 0x1

    const/4 v12, 0x1

    :try_start_4
    new-array v12, v12, [Ljava/io/Closeable;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v1, v12}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v8

    :catch_0
    move-exception v5

    new-instance v12, Lorg/apache/commons/imaging/ImageReadException;

    const-string v13, "I/O error"

    invoke-direct {v12, v13, v5}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :catch_1
    move-exception v5

    new-instance v12, Lorg/apache/commons/imaging/ImageReadException;

    const-string v13, "I/O error"

    invoke-direct {v12, v13, v5}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :catchall_1
    move-exception v12

    goto :goto_3
.end method

.method public static decompressT4_1D([BIIZ)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    new-instance v6, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v14}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    const/4 v8, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v9, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v9}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v13, v0, :cond_5

    :try_start_1
    sget-object v14, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v14, v6}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move/from16 v0, p3

    invoke-static {v3, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->isEOL(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z

    move-result v14

    if-nez v14, :cond_0

    new-instance v14, Lorg/apache/commons/imaging/ImageReadException;

    const-string v15, "Expected EOL not found"

    invoke-direct {v14, v15}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v14, Lorg/apache/commons/imaging/ImageReadException;

    const-string v15, "Decompression error"

    invoke-direct {v14, v15, v4}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v14

    move-object v8, v9

    :goto_1
    const/4 v15, 0x1

    :try_start_3
    new-array v15, v15, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v1, v15}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    throw v14

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_2
    move/from16 v0, p1

    if-ge v11, v0, :cond_2

    :try_start_4
    invoke-static {v6, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v12

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v12, :cond_1

    invoke-virtual {v9, v2}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V
    :try_end_4
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    rsub-int/lit8 v2, v2, 0x1

    add-int/2addr v11, v12

    goto :goto_2

    :cond_2
    move/from16 v0, p1

    if-ne v11, v0, :cond_4

    :try_start_5
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    move/from16 v0, p1

    if-le v11, v0, :cond_3

    new-instance v14, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unrecoverable row length error in image row "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_5
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v10

    const/4 v1, 0x1

    const/4 v14, 0x1

    :try_start_6
    new-array v14, v14, [Ljava/io/Closeable;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    invoke-static {v1, v14}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v10

    :catch_1
    move-exception v7

    new-instance v14, Lorg/apache/commons/imaging/ImageReadException;

    const-string v15, "I/O error"

    invoke-direct {v14, v15, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catch_2
    move-exception v7

    new-instance v14, Lorg/apache/commons/imaging/ImageReadException;

    const-string v15, "I/O error"

    invoke-direct {v14, v15, v7}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :catchall_1
    move-exception v14

    goto :goto_1
.end method

.method public static decompressT4_2D([BIIZ)[B
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    new-instance v16, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v25, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    new-instance v18, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v24

    move/from16 v1, p2

    if-ge v0, v1, :cond_10

    const/16 v21, 0x0

    :try_start_0
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move/from16 v0, p3

    invoke-static {v13, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->isEOL(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z

    move-result v25

    if-nez v25, :cond_0

    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    const-string v26, "Expected EOL not found"

    invoke-direct/range {v25 .. v26}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v17

    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    const-string v26, "Decompression error"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    :cond_0
    const/16 v25, 0x1

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;->readBits(I)I

    move-result v23

    if-nez v23, :cond_b

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    const/16 v25, 0x1

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    const/4 v3, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v3, v0, :cond_d

    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v3, v10

    :goto_2
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v19

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    add-int/lit8 v25, v3, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    :goto_3
    rsub-int/lit8 v25, v11, 0x1

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    move/from16 v21, v3

    goto :goto_1

    :cond_1
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_2

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v4

    add-int v5, v3, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3, v5, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v25, v11, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v6

    add-int v8, v5, v6

    rsub-int/lit8 v25, v11, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-static {v0, v1, v5, v8, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v3, v8

    goto :goto_2

    :cond_2
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_3

    const/4 v7, 0x0

    :goto_4
    add-int v5, v9, v7

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3, v5, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v3, v5

    rsub-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_4

    const/4 v7, -0x1

    goto :goto_4

    :cond_4
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_5

    const/4 v7, -0x2

    goto :goto_4

    :cond_5
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_6

    const/4 v7, -0x3

    goto :goto_4

    :cond_6
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_8

    const/4 v7, 0x2

    goto :goto_4

    :cond_8
    sget-object v25, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_9

    const/4 v7, 0x3

    goto :goto_4

    :cond_9
    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Invalid/unknown T.4 control code "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v13, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v14

    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    const-string v26, "Decompression error"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v25

    :cond_a
    add-int/lit8 v25, v3, 0x1

    :try_start_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    rsub-int/lit8 v25, v19, 0x1

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    goto/16 :goto_3

    :cond_b
    const/4 v12, 0x0

    const/16 v21, 0x0

    :goto_5
    move/from16 v0, v21

    move/from16 v1, p1

    if-ge v0, v1, :cond_d

    move-object/from16 v0, v16

    invoke-static {v0, v12}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v22

    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v15, v0, :cond_c

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int v25, v21, v15

    aput v12, v20, v25
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_c
    rsub-int/lit8 v12, v12, 0x1

    add-int v21, v21, v22

    goto :goto_5

    :cond_d
    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_f

    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    :cond_e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    :cond_f
    move/from16 v0, v21

    move/from16 v1, p1

    if-le v0, v1, :cond_e

    new-instance v25, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unrecoverable row length error in image row "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_10
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object v25

    return-object v25
.end method

.method public static decompressT6([BII)[B
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    new-instance v14, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;

    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;-><init>(Ljava/io/InputStream;)V

    new-instance v15, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;

    invoke-direct {v15}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;-><init>()V

    move/from16 v0, p1

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_d

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    const/16 v20, 0x1

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    const/4 v3, 0x0

    :goto_1
    move/from16 v0, p1

    if-ge v3, v0, :cond_a

    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->CONTROL_CODES:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->P:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_0

    move-object/from16 v0, v17

    invoke-static {v15, v0, v3, v10, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v3, v10

    :goto_2
    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->changingElementAt([II)I

    move-result v16

    move/from16 v0, v16

    if-ne v11, v0, :cond_9

    add-int/lit8 v20, v3, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    :goto_3
    rsub-int/lit8 v20, v11, 0x1

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v10

    move/from16 v18, v3

    goto :goto_1

    :cond_0
    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->H:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_1

    invoke-static {v14, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v4

    add-int v5, v3, v4

    move-object/from16 v0, v17

    invoke-static {v15, v0, v3, v5, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    rsub-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    invoke-static {v14, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I

    move-result v6

    add-int v8, v5, v6

    rsub-int/lit8 v20, v11, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v15, v0, v5, v8, v1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v3, v8

    goto :goto_2

    :cond_1
    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->V0:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_2

    const/4 v7, 0x0

    :goto_4
    add-int v5, v9, v7

    move-object/from16 v0, v17

    invoke-static {v15, v0, v3, v5, v11}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V

    move v3, v5

    rsub-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_3

    const/4 v7, -0x1

    goto :goto_4

    :cond_3
    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_4

    const/4 v7, -0x2

    goto :goto_4

    :cond_4
    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VL3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_5

    const/4 v7, -0x3

    goto :goto_4

    :cond_5
    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR1:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_6

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR2:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_7

    const/4 v7, 0x2

    goto :goto_4

    :cond_7
    sget-object v20, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->VR3:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-object/from16 v0, v20

    if-ne v12, v0, :cond_8

    const/4 v7, 0x3

    goto :goto_4

    :cond_8
    new-instance v20, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Invalid/unknown T.6 control code "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v12, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v13

    new-instance v20, Lorg/apache/commons/imaging/ImageReadException;

    const-string v21, "Decompression error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    :cond_9
    add-int/lit8 v20, v3, 0x1

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I

    move-result v9

    rsub-int/lit8 v20, v16, 0x1

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->nextChangingElement([III)I
    :try_end_1
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    goto/16 :goto_3

    :cond_a
    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_c

    invoke-virtual {v15}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->flush()V

    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_c
    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_b

    new-instance v20, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unrecoverable row length error in image row "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_d
    invoke-virtual {v15}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->toByteArray()[B

    move-result-object v20

    return-object v20
.end method

.method private static fillRange(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;[IIII)V
    .locals 1

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_0

    aput p4, p1, v0

    invoke-virtual {p0, p4}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isEOL(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne p0, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL13:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, v2, :cond_2

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL14:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, v2, :cond_2

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL15:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, v2, :cond_2

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL16:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, v2, :cond_2

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL17:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, v2, :cond_2

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL18:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, v2, :cond_2

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->EOL19:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static lowerBound([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;
    .locals 5

    const/4 v0, 0x0

    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    :cond_0
    add-int v3, v0, v1

    ushr-int/lit8 v2, v3, 0x1

    aget-object v3, p0, v2

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_2

    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p0, v3

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p1, v3, :cond_2

    :cond_1
    aget-object v3, p0, v2

    :goto_0
    return-object v3

    :cond_2
    aget-object v3, p0, v2

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_3

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-lt v0, v1, :cond_0

    aget-object v3, p0, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    goto :goto_1
.end method

.method private static nextChangingElement([III)I
    .locals 2

    move v0, p2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    :goto_1
    return v0

    :cond_1
    array-length v0, p0

    goto :goto_1
.end method

.method private static readTotalRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v2, 0x0

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    sget-object v3, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->WHITE_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v3, p0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3f

    if-gt v3, v4, :cond_0

    return v2

    :cond_1
    sget-object v3, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->BLACK_RUN_LENGTHS:Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;

    invoke-virtual {v3, p0}, Lorg/apache/commons/imaging/common/itu_t4/HuffmanTree;->decode(Lorg/apache/commons/imaging/common/itu_t4/BitInputStreamFlexible;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/HuffmanTreeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lorg/apache/commons/imaging/ImageReadException;

    const-string v4, "Decompression error"

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static writeRunLength(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;II)V
    .locals 5

    if-nez p2, :cond_0

    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->WHITE_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    :goto_0
    const/16 v4, 0x700

    if-lt p1, v4, :cond_1

    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->ADDITIONAL_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-static {v4, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->lowerBound([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    iget-object v4, v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_MAKE_UP_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    sget-object v2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->BLACK_TERMINATING_CODES:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v4, 0x40

    if-lt p1, v4, :cond_2

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->lowerBound([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    iget-object v4, v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr p1, v4

    goto :goto_1

    :cond_2
    aget-object v3, v2, p1

    invoke-virtual {v3, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V

    return-void
.end method
