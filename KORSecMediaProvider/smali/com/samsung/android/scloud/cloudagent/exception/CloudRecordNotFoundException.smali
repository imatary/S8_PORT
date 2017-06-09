.class public Lcom/samsung/android/scloud/cloudagent/exception/CloudRecordNotFoundException;
.super Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
.source "CloudRecordNotFoundException.java"


# static fields
.field private static final serialVersionUID:J = 0x4601adc9e9ad3b79L


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>()V

    const/16 v0, 0x69

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudRecordNotFoundException;->mExceptionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x69

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudRecordNotFoundException;->mExceptionCode:I

    return-void
.end method
