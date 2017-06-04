.class public Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;
.super Ljava/lang/Object;
.source "ResourceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$NETWORK_PREFER;,
        Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$NETWORK_CHARGE;,
        Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$INSTALL_MODE;,
        Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$TYPE;,
        Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$RESULT;,
        Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$STATE;
    }
.end annotation


# instance fields
.field private contentSize:J

.field private contentUrl:Ljava/lang/String;

.field private mode:I

.field private network_charge:I

.field private network_prefer:I

.field private resourceId:Ljava/lang/String;

.field private result:I

.field private signature:Ljava/lang/String;

.field private state:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->contentSize:J

    return-wide v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->mode:I

    return v0
.end method

.method public getNetworkCharge()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->network_charge:I

    return v0
.end method

.method public getNetworkPrefer()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->network_prefer:I

    return v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->result:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->type:I

    return v0
.end method

.method public setContentSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->contentSize:J

    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->contentUrl:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->mode:I

    return-void
.end method

.method public setNetworkCharge(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->network_charge:I

    return-void
.end method

.method public setNetworkPrefe(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->network_prefer:I

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->result:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->signature:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->state:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
