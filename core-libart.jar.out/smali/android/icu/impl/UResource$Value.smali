.class public abstract Landroid/icu/impl/UResource$Value;
.super Ljava/lang/Object;
.source "UResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Value"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAliasString()Ljava/lang/String;
.end method

.method public abstract getBinary()Ljava/nio/ByteBuffer;
.end method

.method public abstract getInt()I
.end method

.method public abstract getIntVector()[I
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getUInt()I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string/jumbo v3, "???"

    return-object v3

    :sswitch_0
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_1
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_2
    invoke-virtual {p0}, Landroid/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    if-eqz v3, :cond_0

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_3
    const-string/jumbo v3, "(binary blob)"

    return-object v3

    :sswitch_4
    const-string/jumbo v3, "(array)"

    return-object v3

    :sswitch_5
    const-string/jumbo v3, "(table)"

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x7 -> :sswitch_1
        0x8 -> :sswitch_4
        0xe -> :sswitch_2
    .end sparse-switch
.end method
