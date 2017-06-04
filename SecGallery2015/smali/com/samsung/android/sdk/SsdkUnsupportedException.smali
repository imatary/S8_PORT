.class public Lcom/samsung/android/sdk/SsdkUnsupportedException;
.super Ljava/lang/Exception;
.source "SsdkUnsupportedException.java"


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mType:I

    return-void
.end method
