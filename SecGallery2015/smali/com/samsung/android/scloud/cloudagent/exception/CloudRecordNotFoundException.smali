.class public Lcom/samsung/android/scloud/cloudagent/exception/CloudRecordNotFoundException;
.super Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
.source "CloudRecordNotFoundException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>()V

    const/16 v0, 0x69

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudRecordNotFoundException;->mExceptionCode:I

    return-void
.end method
