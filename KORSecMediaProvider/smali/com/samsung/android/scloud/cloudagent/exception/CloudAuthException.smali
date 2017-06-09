.class public Lcom/samsung/android/scloud/cloudagent/exception/CloudAuthException;
.super Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;
.source "CloudAuthException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;-><init>()V

    const/16 v0, 0x67

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudAuthException;->mExceptionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x67

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudAuthException;->mExceptionCode:I

    return-void
.end method
