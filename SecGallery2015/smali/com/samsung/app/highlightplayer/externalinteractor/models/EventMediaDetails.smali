.class public Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;
.super Ljava/lang/Object;
.source "EventMediaDetails.java"


# instance fields
.field private mEndTimes:[J

.field private mMediaIds:[I

.field private mStartTimes:[J

.field private noOfMedias:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->noOfMedias:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mMediaIds:[I

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mStartTimes:[J

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mEndTimes:[J

    return-void
.end method


# virtual methods
.method public addMediaDetails(IIJJ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mMediaIds:[I

    aput p2, v0, p1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mStartTimes:[J

    aput-wide p3, v0, p1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mEndTimes:[J

    aput-wide p5, v0, p1

    return-void
.end method

.method public getEndTime(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mEndTimes:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getMediaId(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mMediaIds:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNoOfMedias()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->noOfMedias:I

    return v0
.end method

.method public getStartTime(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mStartTimes:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EventMediaDetails{noOfMedias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->noOfMedias:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMediaIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mMediaIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mStartTimes:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEndTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/EventMediaDetails;->mEndTimes:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
