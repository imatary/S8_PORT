.class public Lcom/samsung/android/scloud/cloudagent/exception/CloudCancelException;
.super Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
.source "CloudCancelException.java"


# static fields
.field public static final name:Ljava/lang/String; = "CloudCancelException"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>()V

    const/16 v0, 0x6a

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudCancelException;->mExceptionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x6a

    iput v0, p0, Lcom/samsung/android/scloud/cloudagent/exception/CloudCancelException;->mExceptionCode:I

    return-void
.end method
