.class public Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;
.source "DeleteFileResponse.java"


# instance fields
.field protected size:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->size:Ljava/lang/Long;

    return-object v0
.end method
