.class Lcom/android/bluetooth/avrcp/Avrcp$Folder;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Folder"
.end annotation


# instance fields
.field mCharsetId:I

.field mDisplayableName:[B

.field mDisplayableNameLength:I

.field private mEntryLength:I

.field mFolderType:B

.field mFolderUid:J

.field mIsPlayable:B

.field mItemType:B

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;JBLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderUid:J

    iput-byte p4, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderType:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mIsPlayable:B

    const/16 v0, 0x6a

    iput v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mCharsetId:I

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mDisplayableName:[B

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mDisplayableName:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mDisplayableNameLength:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mItemType:B

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mDisplayableNameLength:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mEntryLength:I

    return-void
.end method


# virtual methods
.method public getEntryLength()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mEntryLength:I

    return v0
.end method

.method public retrieveFolderItemEntry()[B
    .locals 8

    const-wide/16 v6, 0xff

    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mEntryLength:I

    new-array v1, v3, [B

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mItemType:B

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderUid:J

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderUid:J

    const/16 v3, 0x8

    shr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderUid:J

    const/16 v3, 0x10

    shr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderUid:J

    const/16 v3, 0x18

    shr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderUid:J

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderUid:J

    const/16 v3, 0x28

    shr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderUid:J

    const/16 v3, 0x30

    shr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-wide v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderUid:J

    const/16 v3, 0x38

    shr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-byte v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mFolderType:B

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-byte v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mIsPlayable:B

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mCharsetId:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mCharsetId:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mDisplayableNameLength:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mDisplayableNameLength:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mDisplayableNameLength:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mDisplayableName:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mEntryLength:I

    if-eq v2, v3, :cond_1

    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERROR populating PlayerItemEntry: position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mEntryLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$Folder;->mEntryLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, " FolderItem added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method
