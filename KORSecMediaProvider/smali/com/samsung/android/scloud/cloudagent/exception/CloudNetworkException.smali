.class public Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;
.super Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
.source "CloudNetworkException.java"


# static fields
.field public static final name:Ljava/lang/String; = "CloudNetworkException"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>()V

    const/16 v0, 0x68

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;->mExceptionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x68

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudNetworkException;->mExceptionCode:I

    return-void
.end method
