.class public Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;
.super Ljava/lang/Object;
.source "CoreAppUserData.java"


# instance fields
.field protected duid:Ljava/lang/String;

.field protected serviceID:I

.field protected serviceStatus:I

.field protected type:Ljava/lang/String;


# virtual methods
.method public getDuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceID()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->serviceID:I

    return v0
.end method

.method public getServiceStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->serviceStatus:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;->type:Ljava/lang/String;

    return-object v0
.end method
