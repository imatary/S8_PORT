.class public Landroid/support/v4/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string/jumbo p1, "The operation has been canceled."

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
