.class public Lcom/samsung/android/scloud/cloudagent/exception/CloudLocalStorageFullException;
.super Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
.source "CloudLocalStorageFullException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>()V

    const/16 v0, 0x66

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudLocalStorageFullException;->mExceptionCode:I

    return-void
.end method
