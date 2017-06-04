.class public Lcom/samsung/android/app/omcagent/update/app/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/update/app/AppInfo$NETWORK_PREFER;,
        Lcom/samsung/android/app/omcagent/update/app/AppInfo$NETWORK_CHARGE;,
        Lcom/samsung/android/app/omcagent/update/app/AppInfo$INSTALL_MODE;,
        Lcom/samsung/android/app/omcagent/update/app/AppInfo$TYPE;,
        Lcom/samsung/android/app/omcagent/update/app/AppInfo$RESULT;,
        Lcom/samsung/android/app/omcagent/update/app/AppInfo$STATE;
    }
.end annotation


# instance fields
.field private contentSize:J

.field private contentUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private iconDrawable:[B

.field private iconUrl:Ljava/lang/String;

.field private mode:I

.field private network_charge:I

.field private network_prefer:I

.field private operator:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private result:I

.field private signature:Ljava/lang/String;

.field private state:I

.field private title:Ljava/lang/String;

.field private type:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->contentSize:J

    return-wide v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconDrawable()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->iconDrawable:[B

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->mode:I

    return v0
.end method

.method public getNetworkCharge()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->network_charge:I

    return v0
.end method

.method public getNetworkPrefer()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->network_prefer:I

    return v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->result:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->state:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->type:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setContentSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->contentSize:J

    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->contentUrl:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setIconDrawable([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->iconDrawable:[B

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->mode:I

    return-void
.end method

.method public setNetworkCharge(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->network_charge:I

    return-void
.end method

.method public setNetworkPrefe(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->network_prefer:I

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->operator:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->result:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->signature:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->state:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->type:I

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
