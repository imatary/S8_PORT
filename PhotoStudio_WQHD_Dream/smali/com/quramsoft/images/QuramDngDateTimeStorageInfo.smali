.class public Lcom/quramsoft/images/QuramDngDateTimeStorageInfo;
.super Ljava/lang/Object;
.source "QuramDngDateTimeStorageInfo.java"


# instance fields
.field mFormat:Lcom/quramsoft/images/QuramDngDateTimeFormat;

.field mOffset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/quramsoft/images/QuramDngDateTimeFormat;
    .locals 1

    iget-object v0, p0, Lcom/quramsoft/images/QuramDngDateTimeStorageInfo;->mFormat:Lcom/quramsoft/images/QuramDngDateTimeFormat;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/quramsoft/images/QuramDngDateTimeStorageInfo;->mOffset:J

    return-wide v0
.end method
