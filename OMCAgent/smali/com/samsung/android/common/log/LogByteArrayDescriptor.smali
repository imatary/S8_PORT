.class public Lcom/samsung/android/common/log/LogByteArrayDescriptor;
.super Lcom/samsung/android/common/log/LogDescriptor$Stream;
.source "LogByteArrayDescriptor.java"


# instance fields
.field private stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/common/log/LogDescriptor$Stream;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/common/log/LogByteArrayDescriptor;->stream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/log/LogByteArrayDescriptor;->stream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public shift()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/log/LogByteArrayDescriptor;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method protected size()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/common/log/LogByteArrayDescriptor;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/log/LogByteArrayDescriptor;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
