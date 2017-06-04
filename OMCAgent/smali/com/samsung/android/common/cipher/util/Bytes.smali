.class public Lcom/samsung/android/common/cipher/util/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeBytes([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static splitBytes([BI)[[B
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [[B

    new-array v1, p1, [B

    aput-object v1, v0, v4

    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v1, v1, [B

    aput-object v1, v0, v3

    aget-object v1, v0, v4

    aget-object v2, v0, v4

    array-length v2, v2

    invoke-static {p0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v0, v4

    array-length v1, v1

    aget-object v2, v0, v3

    aget-object v3, v0, v3

    array-length v3, v3

    invoke-static {p0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
