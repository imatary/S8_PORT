.class public Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;
.super Ljava/lang/Object;
.source "GetUserResponse.java"


# instance fields
.field private device_idx:I

.field private msisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice_idx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->device_idx:I

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->msisdn:Ljava/lang/String;

    return-object v0
.end method
