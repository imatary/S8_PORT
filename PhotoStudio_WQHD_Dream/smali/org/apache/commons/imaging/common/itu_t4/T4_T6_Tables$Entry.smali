.class public Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;
.super Ljava/lang/Object;
.source "T4_T6_Tables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field bitString:Ljava/lang/String;

.field value:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->value:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public writeBits(Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->bitString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/apache/commons/imaging/common/itu_t4/BitArrayOutputStream;->writeBit(I)V

    goto :goto_1

    :cond_1
    return-void
.end method
