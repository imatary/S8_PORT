.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;
.source "PushRequest.java"


# instance fields
.field protected pushType:Ljava/lang/String;

.field protected regId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/omcagent/network/PushInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/PushInfo;->getPushType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;->pushType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/PushInfo;->getPushId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;->regId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPushType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public getRegId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;->regId:Ljava/lang/String;

    return-object v0
.end method

.method public setPushType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;->pushType:Ljava/lang/String;

    return-void
.end method

.method public setRegId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/PushRequest;->regId:Ljava/lang/String;

    return-void
.end method
