.class Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaElement"
.end annotation


# instance fields
.field mAttrIds:[I

.field mAttrLen:I

.field mAttrVal:[Ljava/lang/String;

.field mDisplayableName:[B

.field private mEntryLength:I

.field mItemType:B

.field mMediaId:J

.field mMediaType:B

.field mMediaUid:J

.field mNumAttrs:B

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;JLjava/lang/String;B[I[Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrLen:I

    iput-wide p2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaUid:J

    iput-wide p2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    iput-byte v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaType:B

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mDisplayableName:[B

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mItemType:B

    iput-byte p5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    iget-byte v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    iget-byte v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v2, p6, v0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    aget-object v3, p7, v0

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrLen:I

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrLen:I

    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrLen:I

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mDisplayableName:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-byte v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mEntryLength:I

    return-void
.end method


# virtual methods
.method public getEntryLength()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mEntryLength:I

    return v0
.end method

.method public getHashCode()J
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    add-long v0, v4, v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v6

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v6

    const-string/jumbo v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "artist is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get33(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get33(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-get33(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v7

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v8

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_4
    return-wide v0

    :cond_5
    const-string/jumbo v2, "Avrcp"

    const-string/jumbo v3, "artist is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public retrieveAttributesEntry()[B
    .locals 9

    iget-byte v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    mul-int/lit8 v6, v6, 0x8

    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrLen:I

    add-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x2

    new-array v4, v0, [B

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x4

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    iget-byte v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    :goto_0
    iget-byte v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    if-ge v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v6, v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v6, v6, v2

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v6, v6, v2

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v6, v6, v2

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x6a

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_0

    aget-byte v6, v1, v3

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eq v5, v0, :cond_2

    const-string/jumbo v6, "Avrcp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ERROR populating ItemAttributeEntry: position:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "attrLen:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v4
.end method

.method public retrieveMediaItemEntry()[B
    .locals 12

    const/16 v11, 0x6a

    const/4 v10, 0x0

    const-wide/16 v8, 0xff

    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mEntryLength:I

    new-array v3, v5, [B

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-byte v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mItemType:B

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    const/16 v5, 0x8

    shr-long/2addr v6, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    const/16 v5, 0x10

    shr-long/2addr v6, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    const/16 v5, 0x18

    shr-long/2addr v6, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    const/16 v5, 0x20

    shr-long/2addr v6, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    const/16 v5, 0x28

    shr-long/2addr v6, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    const/16 v5, 0x30

    shr-long/2addr v6, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-wide v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaId:J

    const/16 v5, 0x38

    shr-long/2addr v6, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-byte v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mMediaType:B

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    aput-byte v11, v3, v4

    add-int/lit8 v4, v4, 0x1

    aput-byte v10, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mDisplayableName:[B

    array-length v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mDisplayableName:[B

    array-length v5, v5

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mDisplayableName:[B

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mDisplayableName:[B

    aget-byte v5, v5, v1

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-byte v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    :goto_1
    iget-byte v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mNumAttrs:B

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v5, v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrIds:[I

    aget v5, v5, v1

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    aput-byte v11, v3, v4

    add-int/lit8 v4, v4, 0x1

    aput-byte v10, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mAttrVal:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_1

    aget-byte v5, v0, v2

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mEntryLength:I

    if-eq v4, v5, :cond_3

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ERROR populating MediaItemEntry: position:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mEntryLength:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaElement;->mEntryLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v3
.end method
