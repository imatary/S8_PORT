.class Lcom/android/bluetooth/avrcp/Avrcp$Metadata;
.super Ljava/lang/Object;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;

.field private totalNum:J

.field private trackNum:J

.field private trackTitle:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->genre:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->totalNum:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackNum:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->genre:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->totalNum:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackNum:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/bluetooth/avrcp/Avrcp$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackNum:J

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->genre:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->totalNum:J

    return-void
.end method


# virtual methods
.method public getHashCode()J
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long v0, v4, v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_2
    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackNum:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackNum:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    :cond_3
    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "Avrcp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Adding track number as well. Metadata hash value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " trackNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->trackNum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Genre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " totalNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/bluetooth/avrcp/Avrcp$Metadata;->totalNum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
