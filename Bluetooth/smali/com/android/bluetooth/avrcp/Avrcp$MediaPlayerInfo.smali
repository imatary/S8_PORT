.class Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerInfo"
.end annotation


# instance fields
.field private mCharsetId:S

.field private mDisplayableName:[B

.field private mDisplayableNameLength:S

.field private mEntryLength:S

.field private mFeatureMask:[I

.field private mIsAvailable:Z

.field private mItemLength:S

.field private mItemType:B

.field private mMajorPlayerType:B

.field private mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

.field private mPlayState:B

.field private mPlayerId:S

.field private mPlayerPackageName:Ljava/lang/String;

.field private mPlayerSubType:I

.field private mToBePublished:Z

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;)S
    .locals 1

    iget-short v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;S)S
    .locals 0

    iput-short p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    return p1
.end method

.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;SBIBSS[BLjava/lang/String;[I)V
    .locals 4

    const/16 v3, 0x10

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    iput-byte p3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMajorPlayerType:B

    iput p4, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerSubType:I

    iput-byte p5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayState:B

    iput-short p6, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    iput-short p7, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    iput-object p9, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mToBePublished:Z

    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mItemType:B

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    new-instance v1, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-direct {v1, p1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;-><init>(Lcom/android/bluetooth/avrcp/Avrcp;)V

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    aget v2, p10, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    const/4 v0, 0x0

    :goto_1
    iget-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    aget-byte v2, p8, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mItemLength:S

    iget-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mItemLength:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    const-string/jumbo v1, "Avrcp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaPlayerInfo: mPlayerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public GetMetadata()Lcom/android/bluetooth/avrcp/Avrcp$Metadata;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    return-object v0
.end method

.method public GetPlayState()B
    .locals 1

    iget-byte v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayState:B

    return v0
.end method

.method public GetPlayerAvailablility()Z
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " get player availability with player id::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " available ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    return v0
.end method

.method public GetPlayerPublishability()Z
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " GetPlayerPublishability player id::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " toBePublished ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mToBePublished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mToBePublished:Z

    return v0
.end method

.method public RetrievePlayerEntryLength()I
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Entry length for player id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-short v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    return v0
.end method

.method public RetrievePlayerId()S
    .locals 1

    iget-short v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    return v0
.end method

.method public RetrievePlayerItemEntry()[B
    .locals 6

    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    new-array v1, v3, [B

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mItemType:B

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-byte v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMajorPlayerType:B

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerSubType:I

    mul-int/lit8 v4, v0, 0x8

    shr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-byte v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayState:B

    invoke-static {v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap16(Lcom/android/bluetooth/avrcp/Avrcp;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x10

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mFeatureMask:[I

    aget v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mCharsetId:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    :goto_2
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableNameLength:S

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-short v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    if-eq v2, v3, :cond_3

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

    iget-short v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mEntryLength:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayerInfo: mPlayerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mDisplayableName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->getPlayerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v1

    :cond_4
    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayerInfo: mPlayerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public RetrievePlayerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public SetMetadata(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mMetadata:Lcom/android/bluetooth/avrcp/Avrcp$Metadata;

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-get5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->-set5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public SetPlayState(B)V
    .locals 0

    iput-byte p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayState:B

    return-void
.end method

.method public SetPlayerAvailablility(Z)V
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " set player availability with player id::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " available ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mIsAvailable:Z

    return-void
.end method

.method public SetPlayerPublishability(Z)V
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " set player publishabilty with player id::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " toBePublished ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mToBePublished:Z

    return-void
.end method

.method public getPlayerId()S
    .locals 1

    iget-short v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerId:S

    return v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mDisplayableName:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getPlayerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$MediaPlayerInfo;->mPlayerPackageName:Ljava/lang/String;

    return-object v0
.end method
