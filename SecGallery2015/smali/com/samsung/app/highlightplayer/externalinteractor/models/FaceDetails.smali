.class public Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;
.super Ljava/lang/Object;
.source "FaceDetails.java"


# instance fields
.field private height:J

.field private width:J

.field private x:J

.field private y:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->x:J

    iput-wide p3, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->y:J

    iput-wide p5, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->width:J

    iput-wide p7, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->height:J

    return-void
.end method


# virtual methods
.method public getHeight()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->height:J

    return-wide v0
.end method

.method public getWidth()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->width:J

    return-wide v0
.end method

.method public getX()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->x:J

    return-wide v0
.end method

.method public getY()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->y:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FaceDetails{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->x:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->y:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->width:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/app/highlightplayer/externalinteractor/models/FaceDetails;->height:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
