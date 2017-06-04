.class public Lcom/samsung/android/app/omcagent/network/PushInfo;
.super Ljava/lang/Object;
.source "PushInfo.java"


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/network/PushInfo;


# instance fields
.field private deviceId:Ljava/lang/String;

.field private pushId:Ljava/lang/String;

.field private pushType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/network/PushInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/PushInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/PushInfo;->instance:Lcom/samsung/android/app/omcagent/network/PushInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readDeviceID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/omcagent/network/PushInfo;->setUniqueID(Ljava/lang/String;)V

    return-void
.end method

.method private setPushId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/PushInfo;->pushId:Ljava/lang/String;

    return-void
.end method

.method private setPushType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/PushInfo;->pushType:Ljava/lang/String;

    return-void
.end method

.method private setUniqueID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/PushInfo;->deviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPushId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/PushInfo;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/PushInfo;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/PushInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public setPushInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/network/PushInfo;->setPushType(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/omcagent/network/PushInfo;->setPushId(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\npushType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/PushInfo;->pushType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pushId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/PushInfo;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
