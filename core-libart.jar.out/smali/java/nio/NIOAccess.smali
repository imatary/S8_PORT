.class public final Ljava/nio/NIOAccess;
.super Ljava/lang/Object;
.source "NIOAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBaseArray(Ljava/nio/Buffer;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->array()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getBaseArrayOffset(Ljava/nio/Buffer;)I
    .locals 2

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->position:I

    add-int/2addr v0, v1

    iget v1, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBasePointer(Ljava/nio/Buffer;)J
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Ljava/nio/Buffer;->address:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    return-wide v4

    :cond_0
    iget v2, p0, Ljava/nio/Buffer;->position:I

    iget v3, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method
