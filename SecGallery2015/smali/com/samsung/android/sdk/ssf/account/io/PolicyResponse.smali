.class public Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;
.super Ljava/lang/Object;
.source "PolicyResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$PkgInfo;,
        Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;
    }
.end annotation


# instance fields
.field private itv:J

.field private mv:Ljava/lang/String;

.field private pl:[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$PkgInfo;

.field private ss:[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItv()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;->itv:J

    return-wide v0
.end method

.method public getSupportedServices()[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;->ss:[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PolicyResponse [ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;->ss:[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$SupportedService;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;->mv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse;->pl:[Lcom/samsung/android/sdk/ssf/account/io/PolicyResponse$PkgInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
