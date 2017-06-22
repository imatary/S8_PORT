.class public Lcom/quramsoft/images/QuramDngFingerPrint;
.super Ljava/lang/Object;
.source "QuramDngFingerPrint.java"


# static fields
.field static final kDNGFingerprintSize:I = 0x10


# instance fields
.field data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/quramsoft/images/QuramDngFingerPrint;->data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/quramsoft/images/QuramDngFingerPrint;->data:[B

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/quramsoft/images/QuramDngFingerPrint;->data:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngFingerPrint;->data:[B

    return-object v0
.end method

.method public isNull()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/quramsoft/images/QuramDngFingerPrint;->data:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/quramsoft/images/QuramDngFingerPrint;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
